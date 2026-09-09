{ config, pkgs, ... }:

{
  home.username = "sicko";
  home.homeDirectory = "/home/sicko";
  home.stateVersion = "26.05";

  # home.file =  {
  #   ".config/noctalia" = {
  #     source = config.lib.file.mkOutOfStoreSymlink /home/sicko/nixos-config/dots/noctalia;
  #     recursive = true;
  #   };
  # };

  programs.git = {
    enable = true;

    settings = {
      user.name = "hamza-dev7";
      user.email = "hamza77dev@gmail.com";

      credential.helper = "store";
      init.defaultBranch = "main";
    };
  };

  programs.home-manager.enable = true;
}
