{ config, pkgs, ... }:

{
  home = {
    username = "minghongxu";
    homeDirectory = "/home/minghongxu";
    stateVersion = "23.05";

    packages = [
      # pkgs.git
    ];

    sessionVariables = {
      # EDITOR = "nvim";
    };
  };

  programs.home-manager.enable = true;
  
  programs.git = {
    enable = true;
    userName = "Minghong Xu";
    userEmail = "86758413+MinghonZi@users.noreply.github.com";
  };
}
