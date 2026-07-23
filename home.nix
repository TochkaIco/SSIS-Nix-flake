{ config, pkgs, ... }:

{
  # Basic user information
  home.username = "tochka";
  home.homeDirectory = "/home/tochka";

  home.stateVersion = "26.05";

  # User-only packages
  home.packages = with pkgs; [];

  # Program configurations
  programs.git = {
    enable = true;
    settings.user.name = "Fedor Romanov";
    settings.user.email = "fedor1378romanov@gmail.com";
  };

  # Vis config
  xdg.configFile."vis/visrc.lua".source = ./visrc.lua;
}
