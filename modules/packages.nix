{ pkgs, pkgs-26_05, zen-browser, ... }:

{
  programs.yazi.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [

    # Tools
    stow # dotfile management
    nil # Nix package manager
    nixd # Nix language server
    opencode # Ai agent
    python3 # Python interpreter
    fastfetch # Simple fetch
    fetch # Animated fetch
    awww # Wallpaper daemon

    pkgs-26_05.git # Git
    pkgs-26_05.qt6.qtdeclarative # Qt6 declarative
    pkgs-26_05.qt6Packages.qt6ct # Qt6 color theme
    pkgs-26_05.zoxide # Directory navigation
    pkgs-26_05.fzf # Fuzzy finder
    pkgs-26_05.eza # File explorer
    pkgs-26_05.xdg-user-dirs # User directory management
    pkgs-26_05.wget # HTTP client
    pkgs-26_05._7zz # Archive extractor


    # Apps
    neovim # Terminal text editor
    fuzzel # Simple wayland app launcher
    zed-editor # Code editor
    btop # System monitor

    pkgs-26_05.rofi # App launcher
    pkgs-26_05.kitty # Terminal emulator


    # Themes
    adwaita-icon-theme # Icon theme
    qogir-icon-theme # Icon theme


    # Flake packages
    zen-browser # Browser
  ];
}
