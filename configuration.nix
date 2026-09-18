{ ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/locale.nix
    ./modules/nix.nix
    ./modules/users.nix
    ./modules/desktop.nix
    ./modules/packages.nix
    ./modules/nix-ld.nix
  ];

  # Never change this after install.
  system.stateVersion = "26.05";
}















# { config,
#   inputs,
#   pkgs,
#   pkgs-26_05,
#   zen-browser,
#   ...
# }:

# {
#   imports =
#     [
#       /etc/nixos/hardware-configuration.nix
#     ];

#   boot.loader.systemd-boot.enable = true;
#   boot.loader.systemd-boot.configurationLimit = 7;
#   boot.loader.efi.canTouchEfiVariables = true;
#   boot.kernelPackages = pkgs.linuxPackages_latest;

#   networking.hostName = "nixy"; # Define your hostname.
#   networking.networkmanager.enable = true;

#   nix.settings.experimental-features = [ "nix-command" "flakes" ];

#   time.timeZone = "Africa/Casablanca";

#   i18n.defaultLocale = "en_US.UTF-8";
#   i18n.extraLocaleSettings = {
#     LC_ADDRESS = "en_US.UTF-8";
#     LC_IDENTIFICATION = "en_US.UTF-8";
#     LC_MEASUREMENT = "en_US.UTF-8";
#     LC_MONETARY = "en_US.UTF-8";
#     LC_NAME = "en_US.UTF-8";
#     LC_NUMERIC = "en_US.UTF-8";
#     LC_PAPER = "en_US.UTF-8";
#     LC_TELEPHONE = "en_US.UTF-8";
#     LC_TIME = "en_US.UTF-8";
#   };

#   services.displayManager.ly.enable = true;
#   services.displayManager.ly.settings = {
#     bigclock = true;
#     bigclock_12hr = true;
#     hide_key_hints = true;
#     hide_ly_version = true;
#     box_title = "LOGIN";
#   };
#   services.xserver.xkb = {
#     layout = "us";
#     variant = "";
#   };

#   users.users."sicko" = {
#     isNormalUser = true;
#     shell = pkgs.zsh;
#     description = "sicko";
#     extraGroups = [ "networkmanager" "wheel" ];
#     packages = with pkgs; [];
#   };

#   nixpkgs.config.allowUnfree = true;

#   environment.systemPackages = with pkgs; [
#     # Tools
#     stow
#     zoxide
#     fzf
#     eza
#     adwaita-icon-theme
#     nil
#     nixd
#     xdg-user-dirs
#     opencode
#     python3
#     fastfetch
#     fetch
#     awww

#     # Apps
#     neovim
#     fuzzel
#     zed-editor
#     btop

#     # Flake packages
#     zen-browser

#     # Stable releases
#     pkgs-26_05.rofi
#     pkgs-26_05.wget
#     pkgs-26_05.git
#     pkgs-26_05.kitty
#     pkgs-26_05._7zz
#   ];

#   fonts.packages = with pkgs; [
#     nerd-fonts.jetbrains-mono
#   ];

#   programs.niri.enable = true;
#   programs.yazi.enable = true;
#   programs.firefox.enable = true;
#   programs.zsh.enable = true;
#   programs.noctalia = {
#     enable = true;
#     recommendedServices.enable = true;
#   };

#   programs.nix-ld.enable = true;
#   programs.nix-ld.libraries = with pkgs; [
#     stdenv.cc.cc.lib
#     zlib
#     libGL
#     libxkbcommon
#     fontconfig
#     freetype
#     glib
#     dbus
#     wayland
#     xorg.libX11
#     xorg.libxcb
#     xorg.xcbutilcursor
#     xorg.xcbutilimage
#     xorg.xcbutilkeysyms
#     xorg.xcbutilrenderutil
#     xorg.xcbutilwm
#   ];

#   nix.gc = {
#     automatic = true;
#     dates = "daily";
#     options = "--delete-older-than 3d";
#   };


#   # Never change this after install.
#   system.stateVersion = "26.05";

# }
