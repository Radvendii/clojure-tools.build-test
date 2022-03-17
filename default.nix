let
  nixpkgs =
    # this commit is broken
    # builtins.fetchTarball {
    #   url = "https://github.com/NixOS/nixpkgs/archive/7fad01d9d5a3f82081c00fb57918d64145dc904c.tar.gz";
    #   sha256 = "0g0jn8cp1f3zgs7xk2xb2vwa44gb98qlp7k0dvigs0zh163c2kim";
    # };
    # this commit works
    # builtins.fetchTarball {
    #   url = "https://github.com/NixOS/nixpkgs/archive/7e9b0dff974c89e070da1ad85713ff3c20b0ca97.tar.gz";
    #   sha256 = "1ckzhh24mgz6jd1xhfgx0i9mijk6xjqxwsshnvq789xsavrmsc36";
    # };
    # first bad commit
    # clojure: 1.10.3.855 -> 1.10.3.933
    builtins.fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/fea6b0e497fbda44ad1afd66286dde8e2151f0d7.tar.gz";
      sha256 = "1973f3f4hv1rz6jvq51f4kqh64in3nwn7im3bwwh5p0imaf5kahs";
    };
in
with import nixpkgs {};

stdenv.mkDerivation rec {

  name = "tools.build-test";

  src = ./.;

  buildInputs = [ strace clojure git cacert ];

  phases = [ "unpackPhase" "installPhase" ];

  installPhase = ''
    export HOME=/build
    cp -r ${~/.m2} $HOME/.m2
    chmod -R +w $HOME/.m2
    cp -r ${~/.gitlibs} $HOME/.gitlibs
    chmod -R +w $HOME/.gitlibs

    # strace -e 'trace=%file' -y clojure -X:build uber
    clojure -X:build uber
  '';
}
