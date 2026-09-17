{ config, pkgs, ... }:

{
  home.username = "sicko";
  home.homeDirectory = "/home/sicko";
  home.stateVersion = "26.05";


  xdg.desktopEntries = {
    rofi = {
      name = "Rofi";
      type = "Application";
      noDisplay = true;
    };

    rofi-theme-selector = {
      name = "Rofi Theme Selector";
      type = "Application";
      noDisplay = true;
    };
  };

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
