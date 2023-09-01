{ config, pkgs, ... }:

{

  # Default editor
  environment.variables.EDITOR = "vim";
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    vim
    # for markdown and html preview in browser
    python311Packages.grip
    nodePackages_latest.live-server
    # for vim-codefmt's engine
    nodePackages_latest.js-beautify
    nixpkgs-fmt
    shfmt
    # cli tools
    bat
    dialog
    ffmpeg
    fzf
    jq
    shellcheck
    wimlib
    # tui-file-manager 
    joshuto
    lazygit
    neofetch
    newsboat
    tree
    unar
    yt-dlp
    # for macOS tmux & clipboard
    reattach-to-user-namespace
    tmux

  ];

  # Font
  fonts.fonts = with pkgs; [
    hackgen-nf-font # Nerd font used for terminal.
  ];
  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true; # default shell on catalina
  environment.pathsToLink = [ "/share/zsh" ];
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
