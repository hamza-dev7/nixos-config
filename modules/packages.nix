{ pkgs, pkgs-unstable, zen-browser, ... }:

{
  programs.yazi.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [

    # Tools
    fetch # Animated fetch
    opencode # Ai agent
    awww # Wallpaper daemon
    qt6.qtdeclarative # Qt6 declarative
    qt6Packages.qt6ct # Qt6 color theme
    stow # dotfile management
    zoxide # Directory navigation
    fzf # Fuzzy finder
    eza # File explorer
    xdg-user-dirs # User directory management
    fastfetch # Simple fetch
    wget # HTTP client
    _7zz # Archive extractor
    git # Git
    btop # System monitor

    # Apps
    neovim # Terminal text editor
    fuzzel # Simple wayland app launcher
    rofi # App launcher
    kitty # Terminal emulator

    # Themes
    adwaita-icon-theme # Icon theme
    qogir-icon-theme # Icon theme

    # Flake packages
    zen-browser # Browser

    # Unstable
    pkgs-unstable.zed-editor # Code editor
    pkgs-unstable.python3 # Python interpreter
    pkgs-unstable.nil # Nix package manager
    pkgs-unstable.nixd # Nix language server

    # Noctalia
    noctalia # Shell
    bluez # Bluetooth
  ];
}
