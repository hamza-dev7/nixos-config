{ pkgs, pkgs-26_05, zen-browser, ... }:

{
  programs.yazi.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [

    # Tools
    nil # Nix package manager
    nixd # Nix language server
    fetch # Animated fetch
    opencode # Ai agent
    python3 # Python interpreter
    awww # Wallpaper daemon
    qt6.qtdeclarative # Qt6 declarative
    qt6Packages.qt6ct # Qt6 color theme

    # Apps
    neovim # Terminal text editor
    fuzzel # Simple wayland app launcher
    zed-editor # Code editor
    rofi # App launcher
    kitty # Terminal emulator

    # Themes
    adwaita-icon-theme # Icon theme
    qogir-icon-theme # Icon theme

    # Flake packages
    zen-browser # Browser

    # Stable
    pkgs-26_05.stow # dotfile management
    pkgs-26_05.zoxide # Directory navigation
    pkgs-26_05.fzf # Fuzzy finder
    pkgs-26_05.eza # File explorer
    pkgs-26_05.xdg-user-dirs # User directory management
    pkgs-26_05.fastfetch # Simple fetch
    pkgs-26_05.wget # HTTP client
    pkgs-26_05._7zz # Archive extractor
    pkgs-26_05.git # Git
    pkgs-26_05.btop # System monitor
  ];
}
