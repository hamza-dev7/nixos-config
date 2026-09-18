{ pkgs, ... }:

{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc.lib
    zlib
    libGL
    libxkbcommon
    fontconfig
    freetype
    glib
    dbus
    wayland
    libx11
    libxcb
    libxcb-cursor
    libxcb-image
    libxcb-keysyms
    libxcb-render-util
    libxcb-wm
  ];
}
