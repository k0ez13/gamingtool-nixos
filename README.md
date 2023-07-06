### How to use

### Create a folder

```create pkgs folder in /etc/nixos/```

### Create the program folder
```inside /etc/nixos/pkgs/ create a gamingtool folder.```

### Create the nix archive 
```create default.nix in /etc/nixos/pkgs/gamingtool```

### Write the callpackage
```add (pkgs.callPackage ./pkgs/gamingtool/default.nix {}) in your configuration.nix```

### Rebuild your system
```sudo nixos-rebuild switch```




