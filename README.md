# nixos config

## run after cloning
```shell
sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak
```

## run after backing up you configuration.nix
```shell
sudo ln -s $HOME/.nixos-config/configuration.nix /etc/nixos/configuration.nix
sudo ln -s $HOME/.nixos-config/home.nix /etc/nixos/home.nix
sudo ln -s $HOME/.nixos-config/flake.nix /etc/nixos/flake.nix
sudo ln -s $HOME/.nixos-config/flake.lock /etc/nixos/flake.lock
```
