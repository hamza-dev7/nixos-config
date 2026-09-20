{ pkgs, pkgs-26_05, zen-browser, ... }:

{
  programs.yazi.enable = true;
  programs.firefox.enable = true;

  environment.systemPackages = with pkgs; [
    # Tools
    stow
    zoxide
    fzf
    eza
    adwaita-icon-theme
    nil
    nixd
    xdg-user-dirs
    opencode
    python3
    fastfetch
    fetch
    awww
    qt6.qtdeclarative-

    # Apps
    neovim
    fuzzel
    zed-editor
    btop

    # Flake packages
    zen-browser

    # Stable releases
    pkgs-26_05.rofi
    pkgs-26_05.wget
    pkgs-26_05.git
    pkgs-26_05.kitty
    pkgs-26_05._7zz
  ];
}
