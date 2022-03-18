let
  nixpkgs =
    # this commit is broken
    # builtins.fetchTarball {
    #   url = "https://github.com/NixOS/nixpkgs/archive/7fad01d9d5a3f82081c00fb57918d64145dc904c.tar.gz";
    #   sha256 = "0g0jn8cp1f3zgs7xk2xb2vwa44gb98qlp7k0dvigs0zh163c2kim";
    # };
    # this commit works
    builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/7e9b0dff974c89e070da1ad85713ff3c20b0ca97.tar.gz";
      sha256 = "1ckzhh24mgz6jd1xhfgx0i9mijk6xjqxwsshnvq789xsavrmsc36";
    };
    # first bad commit
    # clojure: 1.10.3.855 -> 1.10.3.933
    # builtins.fetchTarball {
    #   url = "https://github.com/NixOS/nixpkgs/archive/fea6b0e497fbda44ad1afd66286dde8e2151f0d7.tar.gz";
    #   sha256 = "1973f3f4hv1rz6jvq51f4kqh64in3nwn7im3bwwh5p0imaf5kahs";
    # };
in
with import nixpkgs {};
let
  packages = (pkgs.callPackage (import ./deps.nix) { }).packages;
  pom = { packages, name }:
    let deps = lib.filterAttrs (n: v: builtins.elem name v.dependents) packages; in
      pkgs.writeText "pom.xml" ''
    <?xml version="1.0" encoding="UTF-8"?>
    <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
      <modelVersion>4.0.0</modelVersion>
      <groupId>${packages.${name}.groupId}</groupId>
      <artifactId>${packages.${name}.artifactId}</artifactId>
      <packaging>jar</packaging>
      <version>${packages.${name}.version}</version>
      ${lib.optionalString (deps != {}) "<dependencies>"}
      ${lib.concatStringsSep "\n  "
        (lib.mapAttrsToList (n: {dependents, artifactId, groupId, version, ...}: ''
          <dependency>
            <groupId> ${groupId} </groupId>
            <artifactId> ${artifactId} </artifactId>
            <version> ${version} </version>
          </dependency>
        '') deps)
       }
      ${lib.optionalString (deps != {}) "</dependencies>"}
    </project>
  '';
  mvnRepo = linkFarm "mvn-repo" (lib.flatten (lib.mapAttrsToList (name: {src, artifactId, version, groupId, ...}: [
    {
      name = "${builtins.replaceStrings ["."] ["/"] groupId}/${artifactId}/${version}/${artifactId}-${version}.jar";
      path = src.jar;
    }
    {
      name = "${builtins.replaceStrings ["."] ["/"] groupId}/${artifactId}/${version}/${artifactId}-${version}.pom";
      path = pom { inherit packages name; };
    }
  ]) (lib.filterAttrs (n: v: v.src ? jar) packages)));

  # localRoot = name:
  #   let inherit (packages.${name}) src artifactId version groupId; in
  #   linkFarm "mvn-folder-${name}" [
  #     {
  #       name = "${artifactId}-${version}.jar";
  #       path = src.jar;
  #     }
  #     {
  #       name = "pom.xml";
  #       path = pom { inherit packages name; };
  #     }
  #   ];

  # cljJank =
  #   ''{:aliases {:jank {:extra-deps {${lib.concatStringsSep " " (lib.mapAttrsToList (name: _: ''${name} {:local/root "${localRoot name}" :deps/manifest :pom}'') (lib.filterAttrs (_: v: v.src ? jar) packages))}}}}}} '';
in

# mvnRepo
stdenv.mkDerivation rec {

  name = "tools.build-test";

  src = ./.;

  buildInputs = [ strace clojure git cacert ];

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    export HOME=/build
    mkdir -p $HOME/.m2
    ln -s ${mvnRepo} $HOME/.m2/repository
    cp -r ${~/.gitlibs} $HOME/.gitlibs
    chmod -R +w $HOME/.gitlibs

    # strace -f -e 'trace=%file' -y clojure -X:build uber
    clojure -X:build uber
    # clojure -Sdeps '${"" /* cljJank */}' -X:build:jank uber
    mkdir -p $out/bin
    mv target/uber.jar $out/bin/${name}.jar
  '';
}
