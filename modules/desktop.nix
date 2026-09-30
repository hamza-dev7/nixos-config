{ pkgs, ... }:

{
  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  services.displayManager.ly.enable = true;
  services.displayManager.ly.settings = {
    bigclock = true;
    bigclock_12hr = true;
    hide_key_hints = true;
    hide_ly_version = true;
    box_title = "LOGIN";
  };

  programs.niri.enable = true;
  # programs.noctalia = {
  #   enable = true;
  #   recommendedServices.enable = true;
  # };

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];
}
