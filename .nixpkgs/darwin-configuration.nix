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
    # cli tools
    bat
    dialog
    ffmpeg
    fzf
    lazygit
    neofetch
    newsboat
    tree
    unar
    vifm
    yt-dlp
    # for macOS tmux & clipboard
    reattach-to-user-namespace
    tmux
      
    ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh.enable = true;  # default shell on catalina
  # programs.fish.enable = true;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}
