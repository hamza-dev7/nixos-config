# nixos config

## run after cloning
sudo mv /etc/nixos/configuration.nix /etc/nixos/configuration.nix.bak

sudo ln -s $HOME/.nixos-config/configuration.nix /etc/nixos/configuration.nix
sudo ln -s $HOME/.nixos-config/home.nix /etc/nixos/home.nix
sudo ln -s $HOME/.nixos-config/flake.nix /etc/nixos/flake.nix
sudo ln -s $HOME/.nixos-config/flake.lock /etc/nixos/flake.lock
