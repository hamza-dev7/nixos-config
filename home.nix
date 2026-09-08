{ config, pkgs, ... }:

{
  home.username = "sicko";
  home.homeDirectory = "/home/sicko";
  home.stateVersion = "26.05";

  home.file =  {
    ".config/noctalia" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dots/noctalia";
      recursive = true;
    };
  };

  programs.git = {
    enable = true;
    userName = "hamza-dev7";
    userEmail = "hamza77dev@gmail.com";
    extraConfig = {
      credential.helper = "store";
      init.defaultBranch = "main";
    };
  };

  programs.home-manager.enable = true;
}
