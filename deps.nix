# generated by clj2nix-1.1.0-rc
{ fetchMavenArtifact, fetchgit, lib }:

let repos = [
        "https://repo1.maven.org/maven2/"
        "https://repo.clojars.org/" ];

  in rec {
      packages = {
  "javax.inject/javax.inject" = rec {
    artifactId = "javax.inject";
    groupId = "javax.inject";
    sha512 = "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
    version = "1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.codehaus.plexus/plexus-cipher" "org.apache.maven/maven-core" "com.google.inject/guice$no_aop" "org.apache.maven/maven-resolver-provider" "org.codehaus.plexus/plexus-sec-dispatcher" "org.apache.maven/maven-model-builder" "org.apache.maven/maven-settings-builder" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.clojure/data.json" = rec {
    artifactId = "data.json";
    groupId = "org.clojure";
    sha512 = "04b7c0c90cb26d643a0b3e7e1ffa2d2d423e977c1454ee5ea7c2e75547ecbc113838df17b797902a975f5ea2184a81a45b605a4d82970805e2bbb02feebc578d";
    version = "2.4.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect.aws/api"];
    paths = [ src ];
  };

  "org.clojure/clojure" = rec {
    artifactId = "clojure";
    groupId = "org.clojure";
    sha512 = "4bb567b9262d998f554f44e677a8628b96e919bc8bcfb28ab2e80d9810f8adf8f13a8898142425d92f3515e58c57b16782cff12ba1b5ffb38b7d0ccd13d99bbc";
    version = "1.10.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "io.github.clojure/tools.build"];
    paths = [ src ];
  };

  "commons-codec/commons-codec" = rec {
    artifactId = "commons-codec";
    groupId = "commons-codec";
    sha512 = "d9586162b257386b5871e7e9ae255a38014a9efaeef5148de5e40a3b0200364dad8516bddd554352aa2e5337bec2cc11df88c76c4fdde96a40f3421aa60650d7";
    version = "1.11";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.httpcomponents/httpclient"];
    paths = [ src ];
  };

  "com.cognitect.aws/api" = rec {
    artifactId = "api";
    groupId = "com.cognitect.aws";
    sha512 = "4592ac413b3ac3dd26d95ce42ba616cfcd97365c10eb86a05414a3c738f39c22b959c70824dbf062d0516f1c5ff4f55fb57eb689ec1c75749f157bd8d21e6e9f";
    version = "0.8.539";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.clojure/tools.analyzer" = rec {
    artifactId = "tools.analyzer";
    groupId = "org.clojure";
    sha512 = "c51752a714848247b05c6f98b54276b4fe8fd44b3d970070b0f30cd755ac6656030fd8943a1ffd08279af8eeff160365be47791e48f05ac9cc2488b6e2dfe504";
    version = "1.1.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.analyzer.jvm"];
    paths = [ src ];
  };

  "org.codehaus.plexus/plexus-component-annotations" = rec {
    artifactId = "plexus-component-annotations";
    groupId = "org.codehaus.plexus";
    sha512 = "cc534fda54272f074fe9edd581a6c3e1ea98127340c7f852c4b4953a44dad048ace22dfa10f30d6adcdfc15efd319dac778a03ebbe20de7779fd1df640506e88";
    version = "2.1.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core"];
    paths = [ src ];
  };

  "com.cognitect.aws/endpoints" = rec {
    artifactId = "endpoints";
    groupId = "com.cognitect.aws";
    sha512 = "8751107bef359a337170f308f0d1384f995be2f5756ddeb8bfa152b638a53bb1c1bfc9f4f51f04f042b6c14ea6967f1afbfc0b95a7c8a29ab5a48db1b299d463";
    version = "1.1.12.150";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "com.google.errorprone/error_prone_annotations" = rec {
    artifactId = "error_prone_annotations";
    groupId = "com.google.errorprone";
    sha512 = "32747ed9abb289da6ec8f3acb3a3be47c1271323847c8e3c1e9f58e9fc4a211221bdaf988990e8ec97bdba3986927ec81cf9d3f3b5939fff8cbdfb0ec7afc7fe";
    version = "2.7.1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "org.apache.commons/commons-lang3" = rec {
    artifactId = "commons-lang3";
    groupId = "org.apache.commons";
    sha512 = "fb0fe98385496a565678a000c26a3245082abfbf879cc29a35112b4bf18c966697a7a63bb1fd2fae4a42512cd3de5a2e6dc9d1df4a4058332a6ddeae06cdf667";
    version = "3.8.1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven.resolver/maven-resolver-impl" "org.apache.maven/maven-artifact"];
    paths = [ src ];
  };

  "org.clojure/tools.logging" = rec {
    artifactId = "tools.logging";
    groupId = "org.clojure";
    sha512 = "c7a5959ad990003962628b9ee47d0c89b728d7d7718a145806de1eb0df7799df916bcc12cc7a1ecd71613e298cea435b0b59c52fef79f4553f22f835d67d9e9d";
    version = "1.2.1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect.aws/api"];
    paths = [ src ];
  };

  "org.clojure/core.specs.alpha" = rec {
    artifactId = "core.specs.alpha";
    groupId = "org.clojure";
    sha512 = "c1d2a740963896d97cd6b9a8c3dcdcc84459ea66b44170c05b8923e5fbb731b4b292b217ed3447bbc9e744c9a496552f77a6c38aea232e5e69f8faa627dea4b5";
    version = "0.2.56";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/clojure"];
    paths = [ src ];
  };

  "javax.annotation/javax.annotation-api" = rec {
    artifactId = "javax.annotation-api";
    groupId = "javax.annotation";
    sha512 = "2453330b27a0822bba440c28b98ae1d83d60d97dfa2d040562dd5126b3548e0caa040fea3b886ac6feb0a858e6c1bc45b6c5472b180f1f14792e5ca33e355959";
    version = "1.2";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.eclipse.sisu/org.eclipse.sisu.plexus"];
    paths = [ src ];
  };

  "org.clojure/spec.alpha" = rec {
    artifactId = "spec.alpha";
    groupId = "org.clojure";
    sha512 = "0740dc3a755530f52e32d27139a9ebfd7cbdb8d4351c820de8d510fe2d52a98acd6e4dfc004566ede3d426e52ec98accdca1156965218f269e60dd1cd4242a73";
    version = "0.2.194";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/clojure"];
    paths = [ src ];
  };

  "org.clojure/tools.cli" = rec {
    artifactId = "tools.cli";
    groupId = "org.clojure";
    sha512 = "1d88aa03eb6a664bf2c0ce22c45e7296d54d716e29b11904115be80ea1661623cf3e81fc222d164047058239010eb678af92ffedc7c3006475cceb59f3b21265";
    version = "1.0.206";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.eclipse.jetty/jetty-http" = rec {
    artifactId = "jetty-http";
    groupId = "org.eclipse.jetty";
    sha512 = "712ada0e464a88366285260824846262ed720d777fb0f83aa34942b0ec9583a2ca8dbc393bc2acd59f5441a60f2de5d3c0cad16658983bf31ef058810dbf8427";
    version = "9.4.44.v20210927";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.eclipse.jetty/jetty-client" "com.cognitect/http-client"];
    paths = [ src ];
  };

  "org.eclipse.jetty/jetty-util" = rec {
    artifactId = "jetty-util";
    groupId = "org.eclipse.jetty";
    sha512 = "7a5ad20662da63fc19c8cf0bd65c94dc00ac80625d8538619cf3ad9c7358a0225a933cd1ca408017a1869267938b3cdfd30f075fc3364ed6cf384d19b3c0ac8d";
    version = "9.4.44.v20210927";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect/http-client" "org.eclipse.jetty/jetty-io" "org.eclipse.jetty/jetty-http"];
    paths = [ src ];
  };

  "org.slf4j/jcl-over-slf4j" = rec {
    artifactId = "jcl-over-slf4j";
    groupId = "org.slf4j";
    sha512 = "aed539305114718bd76da54f29a391362eb331108d9c033956bf68df29c62a44874c73ae39d19a25342625b6092326d39b4d8720aed6c62234a234e0855b00b5";
    version = "1.7.30";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven.resolver/maven-resolver-transport-http"];
    paths = [ src ];
  };

  "org.clojure/tools.analyzer.jvm" = rec {
    artifactId = "tools.analyzer.jvm";
    groupId = "org.clojure";
    sha512 = "ac9aac0d14fd92a66cd9c7bbf8ea8df92116eba5dc7f4819e38ec1b334ee0997fe8be57781300e4d78a6dd138cc8e2041e7d1511198c3f49cd43219444e5f3ec";
    version = "1.2.1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/core.async"];
    paths = [ src ];
  };

  "org.apache.maven.resolver/maven-resolver-transport-http" = rec {
    artifactId = "maven-resolver-transport-http";
    groupId = "org.apache.maven.resolver";
    sha512 = "0650fdfa290cfa43e7d723d1092743016d8b2bb4fad825ef93e43e4ce687d41310967015e6faa14a0d3fcaac75cc8916a4b50053d77a60686d2d3fa6e51e9976";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.apache.maven/maven-model-builder" = rec {
    artifactId = "maven-model-builder";
    groupId = "org.apache.maven";
    sha512 = "e6493b88baaab589e42286ee4965fbce6842cfbbbbfdaf441c504a22332705d1ed0537683099c2d6d11208137c35a0295898925a17aec0c63884b327f7fc2abf";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-resolver-provider"];
    paths = [ src ];
  };

  "org.codehaus.plexus/plexus-cipher" = rec {
    artifactId = "plexus-cipher";
    groupId = "org.codehaus.plexus";
    sha512 = "8f187b07867a7c29d77454aae4b76479300238d9c4e777c1afa2aebe33b88dab916e29111dd55acac1341849f4579fe91a5470fdd45ccba0e05709c2ce3a1d65";
    version = "2.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.codehaus.plexus/plexus-sec-dispatcher"];
    paths = [ src ];
  };

  "org.codehaus.plexus/plexus-utils" = rec {
    artifactId = "plexus-utils";
    groupId = "org.codehaus.plexus";
    sha512 = "0668d413520a713d9279123eccae3b5e9bc79f41dd8da3b3a1ba79b7b60086c009639d91d84df230e490192fe63b10390f3901478c69bfd452a1280364d24876";
    version = "3.4.1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.codehaus.plexus/plexus-sec-dispatcher"];
    paths = [ src ];
  };

  "org.apache.maven.resolver/maven-resolver-transport-file" = rec {
    artifactId = "maven-resolver-transport-file";
    groupId = "org.apache.maven.resolver";
    sha512 = "8037285f888cf37cc3563528bedb3171a3987750b137ff2c6f77e6ed25fcd0d84be3aa80bebd283bfd5decfb8c55452e701f513a2f4e89ac765cb683b332e87a";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.eclipse.sisu/org.eclipse.sisu.plexus" = rec {
    artifactId = "org.eclipse.sisu.plexus";
    groupId = "org.eclipse.sisu";
    sha512 = "38d7dbe023f9751cb5e30bf154e31696590317dc7b7f768811fe0f5940513fcea4665670cd47d0b72ded85453b10f7d129b0b7428b155a41c903c7b56c986e8d";
    version = "0.3.5";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-plugin-api"];
    paths = [ src ];
  };

  "commons-io/commons-io" = rec {
    artifactId = "commons-io";
    groupId = "commons-io";
    sha512 = "5bd78eed456ede30119319c5bed8e3e4c443b6fd7bdb3a7a5686647bd83094d0c3e2832a7575cfb60e4ef25f08106b93476939d3adcfecf5533cc030b3039e10";
    version = "2.11.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.apache.maven/maven-settings-builder" = rec {
    artifactId = "maven-settings-builder";
    groupId = "org.apache.maven";
    sha512 = "233ebc32f26209a0f0615d8737becd396dc4d3f1ce349dbe793b437db1c64ac8c54ce055c636bbcbee7b489d0be7188b7fec0a9a4cf6a2f8d94873a374c91d3d";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core"];
    paths = [ src ];
  };

  "com.google.guava/listenablefuture" = rec {
    artifactId = "listenablefuture";
    groupId = "com.google.guava";
    sha512 = "c5987a979174cbacae2e78b319f080420cc71bcdbcf7893745731eeb93c23ed13bff8d4599441f373f3a246023d33df03e882de3015ee932a74a774afdd0782f";
    version = "9999.0-empty-to-avoid-conflict-with-guava";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "org.clojure/tools.namespace" = rec {
    artifactId = "tools.namespace";
    groupId = "org.clojure";
    sha512 = "8d3b51778c09f69385eaffb9d288f53cf88310210fff9360211ef8f340dace698be0b235e28c6a953033f8b8471665033f9004382ddeecd0d30cd80ecea52da1";
    version = "1.2.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "io.github.clojure/tools.build"];
    paths = [ src ];
  };

  "org.ow2.asm/asm" = rec {
    artifactId = "asm";
    groupId = "org.ow2.asm";
    sha512 = "40614e658138f2eb95bc26999545f996794c622c4d68efb9e10093743504c4b58bf22590767bc6bd93b77cdfb202c507144ba867bbc8b54d74fe7621cbc55e3a";
    version = "5.2";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.analyzer.jvm"];
    paths = [ src ];
  };

  "org.apache.maven/maven-settings" = rec {
    artifactId = "maven-settings";
    groupId = "org.apache.maven";
    sha512 = "3e0d2652164dbdbadccd60aba6ee2d6ca41d4065080f29f5f1654ea4884d28b054703a8a64a01cf8c6ccfa02cf8af29cab161514d8e852abcb1b3411aba74be7";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-settings-builder"];
    paths = [ src ];
  };

  "org.apache.httpcomponents/httpcore" = rec {
    artifactId = "httpcore";
    groupId = "org.apache.httpcomponents";
    sha512 = "23430cde8b9bed33c91474ba49f1143284135df1b25fdcbc37bc3bb7e9549e77b3918eb40250093db652ae200367e87316129b23b4f6987e94939d60f467498d";
    version = "4.4.13";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven.resolver/maven-resolver-transport-http" "org.apache.httpcomponents/httpclient"];
    paths = [ src ];
  };

  "org.codehaus.plexus/plexus-sec-dispatcher" = rec {
    artifactId = "plexus-sec-dispatcher";
    groupId = "org.codehaus.plexus";
    sha512 = "ad4e814c8baff780a4eee064903e52b09ae00420a59fb075ef72dbb8d64d12d3d5009b03d56c15f93587d931c3a7f06cad6351ab2dc9415ccc6eeab0daebeb07";
    version = "2.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-settings-builder"];
    paths = [ src ];
  };

  "org.apache.maven/maven-core" = rec {
    artifactId = "maven-core";
    groupId = "org.apache.maven";
    sha512 = "228665bba3dfe2423e4738756a3fc6e5128170ca074c905fc46ee328b8726237b9839db481785078624325d7a951a096bf0dc75f632b5f30268f2cc457871e13";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.apache.maven.resolver/maven-resolver-api" = rec {
    artifactId = "maven-resolver-api";
    groupId = "org.apache.maven.resolver";
    sha512 = "002cb75f6e07b27108e79a4d37d94fa882e89a2db30dd2ac69ecf0907cc548e13f579ebfbb5c019da6df4a950e3420b69dac3d49ae94b5646b7968ef7ea811ca";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven.resolver/maven-resolver-connector-basic" "org.apache.maven/maven-resolver-provider" "org.apache.maven.resolver/maven-resolver-transport-http" "org.apache.maven.resolver/maven-resolver-util" "org.apache.maven.resolver/maven-resolver-spi" "org.apache.maven.resolver/maven-resolver-impl" "org.apache.maven.resolver/maven-resolver-transport-file" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "com.cognitect/http-client" = rec {
    artifactId = "http-client";
    groupId = "com.cognitect";
    sha512 = "5507956051ce71d5f521537a443390d49be8fa629074fc19781d0e5e072207afa543ec690876eb895174d82b85810888eb839a0a3ee82ad3394244c7fb78e015";
    version = "1.0.110";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect.aws/api"];
    paths = [ src ];
  };

  "org.apache.maven/maven-resolver-provider" = rec {
    artifactId = "maven-resolver-provider";
    groupId = "org.apache.maven";
    sha512 = "26a359bf14c2c6c3a748f95a244f5bc0251ef75082155e931481f6c93b4b29db5b032ed3d6659e7241d7a166c662dab55aa41c4e7dd82bf52ae583536eda7b40";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.checkerframework/checker-compat-qual" = rec {
    artifactId = "checker-compat-qual";
    groupId = "org.checkerframework";
    sha512 = "d9519f4da7df234a410f66200feeb9da4f9136de34e4850e916c93191905ccbe1b752b9f6a053771319bd959ad41c49f57728826e44462600f0bc37f6bb06b60";
    version = "2.5.5";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "org.apache.maven.shared/maven-shared-utils" = rec {
    artifactId = "maven-shared-utils";
    groupId = "org.apache.maven.shared";
    sha512 = "c6693f8a061de74ac59c61d185f5b130cb574405cfc37febb8e73806ea64eea822a4a75c24098fb49b7871373091543a6f4c526c0842589e528cacad40e5554a";
    version = "3.3.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core"];
    paths = [ src ];
  };

  "org.clojure/java.classpath" = rec {
    artifactId = "java.classpath";
    groupId = "org.clojure";
    sha512 = "90cd8edeaea02bd908d8cfb0cf5b1cf901aeb38ea3f4971c4b813d33210438aae6fff8e724a8272d2ea9441d373e7d936fa5870e309c1e9721299f662dbbdb9a";
    version = "1.0.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.namespace"];
    paths = [ src ];
  };

  "org.clojure/tools.deps.alpha" = rec {
    artifactId = "tools.deps.alpha";
    groupId = "org.clojure";
    sha512 = "3ec10e6220ef256b23b24a0400315b184e28abe0e1ade0a48717805cccfb4ac487ea4778e0317301047a44f47bf66ddaca484a190a72d7eee6c620b23f1dab36";
    version = "0.12.1148";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "io.github.clojure/tools.build"];
    paths = [ src ];
  };

  "commons-logging/commons-logging" = rec {
    artifactId = "commons-logging";
    groupId = "commons-logging";
    sha512 = "ed00dbfabd9ae00efa26dd400983601d076fe36408b7d6520084b447e5d1fa527ce65bd6afdcb58506c3a808323d28e88f26cb99c6f5db9ff64f6525ecdfa557";
    version = "1.2";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.httpcomponents/httpclient"];
    paths = [ src ];
  };

  "com.google.guava/failureaccess" = rec {
    artifactId = "failureaccess";
    groupId = "com.google.guava";
    sha512 = "f8d59b808d6ba617252305b66d5590937da9b2b843d492d06b8d0b1b1f397e39f360d5817707797b979a5bf20bf21987b35333e7a15c44ed7401fea2d2119cae";
    version = "1.0.1";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "com.google.guava/guava" = rec {
    artifactId = "guava";
    groupId = "com.google.guava";
    sha512 = "a6dc4b28c3f616100cbb91958bb819168c32de1fe00c55beef85b4fae5498a9a1ab557cba35616368107737c90381ddbcf532c2ad3351ca6925aa39ff2b87869";
    version = "31.0.1-android";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.clojure/data.xml" = rec {
    artifactId = "data.xml";
    groupId = "org.clojure";
    sha512 = "12ea6e7ee27be4a0329a766f3449f3e3b756772e3cd8588b4666bb175faaabd0780b96300b10e17ccb3016b0ba5d9f020c7d976211ff398e7bebef718aa4d5f5";
    version = "0.2.0-alpha6";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect.aws/api" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.apache.maven.resolver/maven-resolver-spi" = rec {
    artifactId = "maven-resolver-spi";
    groupId = "org.apache.maven.resolver";
    sha512 = "2972b721213bfee654460468b2a2aa50546d7f1957be40d955728875af3a9801f8d78a2f796e832b9332d1f90ffb5ccb651289e7b5c8a175628b21b13594df43";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven.resolver/maven-resolver-connector-basic" "org.apache.maven/maven-resolver-provider" "org.apache.maven.resolver/maven-resolver-transport-http" "org.apache.maven.resolver/maven-resolver-impl" "org.apache.maven.resolver/maven-resolver-transport-file" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "com.google.j2objc/j2objc-annotations" = rec {
    artifactId = "j2objc-annotations";
    groupId = "com.google.j2objc";
    sha512 = "51ea975179f809cb260751d11a513881b643bf016d15949bcb63b57d3c8868a2197e0620ccbaa5739e032797ec6faa3aa6d64606e999fce32930314780ca4115";
    version = "1.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "org.slf4j/slf4j-nop" = rec {
    artifactId = "slf4j-nop";
    groupId = "org.slf4j";
    sha512 = "3d178b92f340339b8473de9effac62b494c01c2b003d578f693052ad422f3fb653df70ac52a752aa2fd84bac3d87014bbc58beb84406154b8c8bad3470fafa7e";
    version = "1.7.32";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "io.github.clojure/tools.build"];
    paths = [ src ];
  };

  "org.codehaus.plexus/plexus-classworlds" = rec {
    artifactId = "plexus-classworlds";
    groupId = "org.codehaus.plexus";
    sha512 = "6a58048d9db54e603b9cfd35373cf695b66dd860bec878c663b4fc53b6b3d44dd5b0c92e7603654911b1f78e63ef277cf6b272fe069a360989138550545f274d";
    version = "2.6.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-plugin-api"];
    paths = [ src ];
  };

  "org.codehaus.plexus/plexus-interpolation" = rec {
    artifactId = "plexus-interpolation";
    groupId = "org.codehaus.plexus";
    sha512 = "6c3b40442adf721d325ee9cbf935d758223a04b3bd8e0f3b60fdb652175c1ca65a6010f7ea8288617ffa73cb1f19d2737c79c403d343b285e0f9afb1729caa60";
    version = "1.26";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-model-builder" "org.apache.maven/maven-settings-builder"];
    paths = [ src ];
  };

  "org.apache.httpcomponents/httpclient" = rec {
    artifactId = "httpclient";
    groupId = "org.apache.httpcomponents";
    sha512 = "3567739186e551f84cad3e4b6b270c5b8b19aba297675a96bcdff3663ff7d20d188611d21f675fe5ff1bfd7d8ca31362070910d7b92ab1b699872a120aa6f089";
    version = "4.5.13";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.checkerframework/checker-qual" = rec {
    artifactId = "checker-qual";
    groupId = "org.checkerframework";
    sha512 = "ff20c424e130c31c30b4f4f5b4374f8f98f94ddae2b123f3c213f147be6b3de57854ee5651b02dd97d352c1c1df2a8bfeef73d5307a71372f46a6002eab24d78";
    version = "3.12.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "com.google.inject/guice" = rec {
    artifactId = "guice";
    groupId = "com.google.inject";
    sha512 = "78f17b090f34564db0fa6903c966e79d8002903d2604f9605a0d713e770a9c772c11d615a5e112dbb15464b9f8945edff6ac3d23ac84ccb08eb1657ec64d4442";
    version = "4.2.2";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      classifier = "no_aop";
    };
    dependents = [ "org.apache.maven/maven-core"];
    paths = [ src ];
  };

  "org.eclipse.jetty/jetty-client" = rec {
    artifactId = "jetty-client";
    groupId = "org.eclipse.jetty";
    sha512 = "f2d70900e345694638a1b969729e4b3c9a3a19a563a53b2c74f26d7f67225dd03d57746a184f4df01fedc86aa9e62b62ca8bbe30ac4492d256ade5753ea2e772";
    version = "9.4.44.v20210927";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect/http-client"];
    paths = [ src ];
  };

  "org.eclipse.jetty/jetty-io" = rec {
    artifactId = "jetty-io";
    groupId = "org.eclipse.jetty";
    sha512 = "cc89006ce0fa66d91d6a07cbf48d9dd88c1d847be6e31dba9c5acf20368b80d4c094fc153f52538b8f24e9b4f5b0b762901a4f42f307dba6c9b328694e355be4";
    version = "9.4.44.v20210927";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.eclipse.jetty/jetty-client" "org.eclipse.jetty/jetty-http"];
    paths = [ src ];
  };

  "org.clojure/tools.reader" = rec {
    artifactId = "tools.reader";
    groupId = "org.clojure";
    sha512 = "3481259c7a1eac719db2921e60173686726a0c2b65879d51a64d516a37f6120db8ffbb74b8bd273404285d7b25143ab5c7ced37e7c0eaf4ab1e44586ccd3c651";
    version = "1.3.6";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.analyzer.jvm" "org.clojure/tools.namespace"];
    paths = [ src ];
  };

  "org.clojure/tools.gitlibs" = rec {
    artifactId = "tools.gitlibs";
    groupId = "org.clojure";
    sha512 = "9f2bfe18d5eea42cb09fee0d35e323ac5844c287e9073c2644c933fd89f41d64eca4d24a40e859a9cb7154da61e96550b39d52c766064cc0f7298f8a915b8f20";
    version = "2.4.172";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.apache.maven.resolver/maven-resolver-connector-basic" = rec {
    artifactId = "maven-resolver-connector-basic";
    groupId = "org.apache.maven.resolver";
    sha512 = "4554cea39910393557cc8769550c3a12ba64e0f57244f71a1c78a9cd3a6032ae9bbd2b43d4c15579b6b89a766a19d28619fd99eeaa1b4862fda549d8cc9e3610";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "com.cognitect.aws/s3" = rec {
    artifactId = "s3";
    groupId = "com.cognitect.aws";
    sha512 = "59d9f8f6fd53607ea689d62916a6209decdc958c4dc53b17a96f04d2eced28b8371b36cc1274334a6b10b4f97b50a27d37dbf54ef78a55d5db5eac7b32d168c5";
    version = "814.2.1053.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "io.github.clojure/tools.build" = rec {
    src = fetchgit {
      name = "tools.build";
      url = "https://github.com/clojure/tools.build.git";
      rev = "7d40500863818c6f9a6e077b18db305d02149384";
      sha256 = "1drgbjjs7sz1zsjm7y0mpgj2z37w2zchgsqy0a4fxciqsjwc3qwy";
    };
    dependents = [ ];
    paths = map (path: src + path) [
      "/src/main/clojure"
        "/src/main/resources"
    ];
  };

  "org.apache.maven.resolver/maven-resolver-impl" = rec {
    artifactId = "maven-resolver-impl";
    groupId = "org.apache.maven.resolver";
    sha512 = "ef011e67152290379da6db1ce256b70dc436eb1596d58c38ee5bf9df65fbe75ed2ddc7768f6c61901c8cb83af88c42ad0b7bf24ad1775949eb4522511825280d";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-resolver-provider" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.slf4j/slf4j-api" = rec {
    artifactId = "slf4j-api";
    groupId = "org.slf4j";
    sha512 = "4ca4045775a879c3ce3021908db7b4778235a322fd8e2567da960156f24b9da86e6812a4956c8dc19920cd83e4c61141168c580829f43f10bbac925d465c3fd1";
    version = "1.7.32";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.slf4j/slf4j-nop"];
    paths = [ src ];
  };

  "org.apache.maven/maven-model" = rec {
    artifactId = "maven-model";
    groupId = "org.apache.maven";
    sha512 = "64b96a0f8779efe75103afd1ec685a9e50e810fd51c5afb5e6839fd875365cb61e534818a6ec1119520541e960f63692172d8bdae3d8e63a583558296f9ecb4d";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-plugin-api" "org.apache.maven/maven-resolver-provider" "org.apache.maven/maven-model-builder"];
    paths = [ src ];
  };

  "org.eclipse.sisu/org.eclipse.sisu.inject" = rec {
    artifactId = "org.eclipse.sisu.inject";
    groupId = "org.eclipse.sisu";
    sha512 = "f4790768c0d958b3429a3241abb15f9bb6e2fd7f43a5e034dde6a3a6820e6941c00f10ad084d5c38f8edc144e7acbea7ba3dc8952f01dab41e443803db2a4efc";
    version = "0.3.5";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.eclipse.sisu/org.eclipse.sisu.plexus" "org.apache.maven/maven-model-builder"];
    paths = [ src ];
  };

  "org.apache.maven.resolver/maven-resolver-util" = rec {
    artifactId = "maven-resolver-util";
    groupId = "org.apache.maven.resolver";
    sha512 = "45bd05eee2e2e606155916ec06efdb62e4a147af7ed0bb0b443b2a71b72576fec8e0ced0eee3ae3c86778198de227c1c7fe5d423cff0b96ba382fb563239694a";
    version = "1.6.3";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven.resolver/maven-resolver-connector-basic" "org.apache.maven/maven-resolver-provider" "org.apache.maven.resolver/maven-resolver-transport-http" "org.apache.maven.resolver/maven-resolver-impl" "org.clojure/tools.deps.alpha"];
    paths = [ src ];
  };

  "org.clojure/core.memoize" = rec {
    artifactId = "core.memoize";
    groupId = "org.clojure";
    sha512 = "67196537084b7cc34a01454d2a3b72de3fddce081b72d7a6dc1592d269a6c2728b79630bd2d52c1bf2d2f903c12add6f23df954c02ef8237f240d7394ccc3dde";
    version = "1.0.253";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/tools.analyzer.jvm"];
    paths = [ src ];
  };

  "org.apache.maven/maven-repository-metadata" = rec {
    artifactId = "maven-repository-metadata";
    groupId = "org.apache.maven";
    sha512 = "67f0a5048054e8cf03c608fc846021a3be64b6733595260ccd46796673b2abdebb5afedd9599f7060fb560932e16c6f7637281969a1e7b43d352fde0b99945f3";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-resolver-provider"];
    paths = [ src ];
  };

  "org.clojure/data.priority-map" = rec {
    artifactId = "data.priority-map";
    groupId = "org.clojure";
    sha512 = "bb8bc5dbfd3738c36b99a51880ac3f1381d6564e67601549ef5e7ae2b900e53cdcdfb8d0fa4bf32fb8ebc4de89d954bfa3ab7e8a1122bc34ee5073c7c707ac13";
    version = "1.1.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/core.cache"];
    paths = [ src ];
  };

  "aopalliance/aopalliance" = rec {
    artifactId = "aopalliance";
    groupId = "aopalliance";
    sha512 = "3f44a932d8c00cfeee2eb057bcd7c301a2d029063e0a916e1e20b3aec4877d19d67a2fd8aaf58fa2d5a00133d1602128a7f50912ffb6cabc7b0fdc7fbda3f8a1";
    version = "1.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.inject/guice$no_aop"];
    paths = [ src ];
  };

  "org.apache.maven/maven-builder-support" = rec {
    artifactId = "maven-builder-support";
    groupId = "org.apache.maven";
    sha512 = "a9dccb93c090840112045e605a4777bc41fe04fe7e518148095ec31078c6d87c8fae312aefd6d35cc1475fd622b361d7010251735c738ccef85b3f42e8c13f1a";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-model-builder" "org.apache.maven/maven-settings-builder"];
    paths = [ src ];
  };

  "com.google.code.findbugs/jsr305" = rec {
    artifactId = "jsr305";
    groupId = "com.google.code.findbugs";
    sha512 = "bb09db62919a50fa5b55906013be6ca4fc7acb2e87455fac5eaf9ede2e41ce8bbafc0e5a385a561264ea4cd71bbbd3ef5a45e02d63277a201d06a0ae1636f804";
    version = "3.0.2";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.google.guava/guava"];
    paths = [ src ];
  };

  "org.clojure/core.cache" = rec {
    artifactId = "core.cache";
    groupId = "org.clojure";
    sha512 = "0a07ceffc2fa3a536b23773eefc7ef5e1108913b93c3a5416116a6566de76dd5c218f3fb0cc19415cbaa8843838de310b76282f20bf1fc3467006c9ec373667e";
    version = "1.0.225";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/core.memoize"];
    paths = [ src ];
  };

  "org.apache.maven/maven-plugin-api" = rec {
    artifactId = "maven-plugin-api";
    groupId = "org.apache.maven";
    sha512 = "f3e8881e3ecdba8725583a214f5133fa23aafcb306b0ae43b20f438c483be446a205841e473eb04d641a84dd1ac3647ff1bd25f0ce1b094b9e975a0f7e3758a2";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core"];
    paths = [ src ];
  };

  "org.clojure/core.async" = rec {
    artifactId = "core.async";
    groupId = "org.clojure";
    sha512 = "5df59bdab9db7131f1d8c0a067a8292f287e8ba78f44171555272a9947a82349eee95f7fb935b98e91675b8498d3f7cadce6c35ba46242e55889d2c828d22cac";
    version = "1.5.644";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "com.cognitect.aws/api" "com.cognitect/http-client"];
    paths = [ src ];
  };

  "org.apache.maven/maven-artifact" = rec {
    artifactId = "maven-artifact";
    groupId = "org.apache.maven";
    sha512 = "eae74088cf0ef66ff6cecd5ce6cf476e3df39e167988c1efbaa17f3c88fe55c59451125678cd041517702eb865190cdff64e691313f99c2e2f316e3e1c8a9daf";
    version = "3.8.4";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.apache.maven/maven-core" "org.apache.maven/maven-plugin-api" "org.apache.maven/maven-model-builder"];
    paths = [ src ];
  };

  "org.clojure/data.codec" = rec {
    artifactId = "data.codec";
    groupId = "org.clojure";
    sha512 = "c324b62a5f14b2f17e49f1b0fffa3f44d195cb5261e03c5e472ba4f2972135f4b06fd321c0887717c727f025fc1a0121283d16fbf923d7469856702614a288f3";
    version = "0.1.0";
    src = fetchMavenArtifact {
      inherit repos artifactId groupId sha512 version;
      
    };
    dependents = [ "org.clojure/data.xml"];
    paths = [ src ];
  };

  };
  }
  