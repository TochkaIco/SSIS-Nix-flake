{ config, pkgs, inputs, ... }:

{
  # Basic user information
  home.username = "tochka";
  home.homeDirectory = "/home/tochka";

  home.stateVersion = "26.05";

  # Install required tools for the dotfiles
  home.packages = with pkgs; [
    quickshell
    kitty
    dart-sass
  ];

  # Symlink dotfiles from the flake input directly into ~/.config
  xdg.configFile."hypr".source = "${inputs.dots-hyprland}/.config/hypr";
  xdg.configFile."quickshell".source = "${inputs.dots-hyprland}/.config/quickshell";
  xdg.configFile."ags".source = "${inputs.dots-hyprland}/.config/ags";

  # Program configurations
  programs.git = {
    enable = true;
    settings.user.name = "Fedor Romanov";
    settings.user.email = "fedor1378romanov@gmail.com";
  };

  # Vis config
  xdg.configFile."vis/visrc.lua".source = ./visrc.lua;
}
