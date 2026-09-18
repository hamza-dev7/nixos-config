{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users."sicko" = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "sicko";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
