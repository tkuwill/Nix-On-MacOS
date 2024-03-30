{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      directory = {
        truncation_length = 0;
        truncate_to_repo = false;

      };
    };
  };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting = {
      enable = true;
    };
    enableCompletion = true;
    defaultKeymap = "emacs";
    localVariables = {
      TIMEFMT = "real\t%E\nuser\t%U\nsys\t%S\ncpu\t%P";

    };
    initExtraBeforeCompInit = ''
      autoload -Uz promptinit
      promptinit
      zstyle ':completion:*' menu yes select
    '';
    initExtra = ''
      bindkey "ç" fzf-cd-widget
      bindkey "\e[3~" delete-char
      bindkey "\E[1~" beginning-of-line
      bindkey "\E[4~" end-of-line
      autoload -z edit-command-line
      zle -N edit-command-line
      bindkey "^X^E" edit-command-line
    '';
    shellAliases = {
      "ls -l" = "ls -Gl";
      la = "ls -Gla";
      musicDownloadTui = "/Users/will/ShellScripts/musicDownloadTui.sh";
      vpnLocation = "curl ipinfo.io/country";
      vpnCountry = "curl ifconfig.co/country";
    };
    history = {
      extended = true;
      path = "$HOME/.zsh_history";
      save = 99999;
      size = 99999;
      ignorePatterns = [
        "rm *"
        "vim"
        "rm -rf *"
        "neofetch"
        "joshuto"
        "newsboat"
        "tmux"
        "cd .."
        "cd"
        "bye"
        "exit"
        "lazygit"
        "pwd"
      ];
    };
  };
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

}
