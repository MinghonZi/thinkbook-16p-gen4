{ config, pkgs, ... }:

{
  home.username = "minghongxu";
  home.homeDirectory = "/home/minghongxu";

  home.stateVersion = "23.05";

  home.packages = [
  ];

  home.sessionVariables = {
    # EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
 
  programs.git = {
    enable = true;
    userName = "Minghong Xu";
    userEmail = "86758413+MinghonZi@users.noreply.github.com";
  };
}
