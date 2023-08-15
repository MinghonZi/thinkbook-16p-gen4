{ config, pkgs, ... }:

{
  home.username = "minghongxu";
  home.homeDirectory = "/home/minghongxu";
  home.stateVersion = "23.05";

  programs.home-manager = {
    enable = true;
  };

  home.packages = with pkgs; [
    fd # a simple, fast, and user-friendly alternative to find
    inxi # a script to get system info
    xorg.xlsclients # a util for listing all client apps that are connected to the X server
    valgrind # debugging and profiling tool suite
    # vulkan-tools # official tools and utils for verifying correct usage of the Vulkan API
    wev # a tool for debugging wayland events, similar to xev
  ];

  # https://nix-community.github.io/home-manager/index.html#_why_are_the_session_variables_not_set
  home.sessionVariables = {
    # "LOCALE_ARCHIVE_${builtins.replaceStrings ["."] ["_"] pkgs.glibcLocales.version}" = "${pkgs.glibcLocales}/lib/locale/locale-archive" # https://nixos.wiki/wiki/Locales
    EDITOR = "nvim";
    LESSHISTFILE = "/dev/null"; # discards history of commands executed in less
  };

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set -g fish_greeting # empties the welcome message

      # https://github.com/fish-shell/fish-shell/issues/1047
      switch $TERM
        case foot
          # ctrl-backspace
          bind \b backward-kill-path-component
          # ctrl-del
          bind \e\[3\;5~ kill-word
      end
    '';

    plugins = [
    ];
  };

  programs.bat = {
    enable = true;
  };

  programs.fuzzel = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
  };

  programs.git = {
    enable = true;
    userName = "Minghong Xu";
    userEmail = "86758413+MinghonZi@users.noreply.github.com";
  };

  programs.joshuto = {
    enable = true;
  };

  programs.lazygit = {
    enable = true;
  };

  # https://nixos.wiki/wiki/Neovim#With_Home_Manager_2
  programs.neovim = {
    enable = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.yt-dlp = {
    enable = true;
  };

  programs.zathura = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
  };
}
