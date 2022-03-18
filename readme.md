first [install nix](https://nixos.org/download.html)

Then run the following commands to reproduce the error:

```
nix-shell
clojure -X:build uber
nix-build
```

At the moment it also doesn't work to re-build without internet access, which can be simulated with the below commands. I will note though that this built in the past, and I don't remember what I've changed since then.

```
sudo unshare -n
sudo su <username>
nix-shell
clojure -X:build uber
```

This starts breaking at nixpkgs commit fea6b0e497fbda44ad1afd66286dde8e2151f0d7, in other words the clojure upgrade from 1.10.3.855 to 1.10.3.933.
