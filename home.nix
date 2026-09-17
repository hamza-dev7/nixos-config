{ config, pkgs, ... }:

{
  home.username = "sicko";
  home.homeDirectory = "/home/sicko";
  home.stateVersion = "26.05";


  home.file.".local/share/applications/rofi.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Rofi
    NoDisplay=true
  '';

  home.file.".local/share/applications/rofi-theme-selector.desktop".text = ''
    [Desktop Entry]
    Type=Application
    Name=Rofi Theme Selector
    NoDisplay=true
  '';

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
