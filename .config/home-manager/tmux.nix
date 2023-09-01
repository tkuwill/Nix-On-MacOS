{
  programs.tmux = {
    enable = true;
    clock24 = true;
    historyLimit = 30000;
    mouse = true;
    terminal = "screen-256color";
    extraConfig = ''
      set -g set-titles on
      set -g set-titles-string '#{pane_current_command} - #T'
      set-option -g mouse on
      setw -g mode-keys vi
      set-option -s set-clipboard off
      bind-key -T copy-mode-vi v send-keys -X begin-selection
      unbind -T copy-mode-vi Enter
      bind-key -T copy-mode-vi 'y' send -X copy-pipe-and-cancel 'reattach-to-user-namespace pbcopy'
      bind-key C-v run-shell 'reattach-to-user-namespace pbpaste | tmux load-buffer - \; paste-buffer -d'
      bind-key -T copy-mode-vi MouseDragEnd1Pane send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
      set -g status-interval 1
      set -g status-bg white
      set -g status-fg white
      set -g status-left '#[fg=colour21]Sess_#S'
      set -g status-right '#[fg=blue,bright]%H:%M'
      set-option -g status-justify centre
      setw -g window-status-current-style 'fg=colour11 bg=colour27 bold'
      setw -g window-status-current-format 'Win_#I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F '
      setw -g window-status-style 'fg=colour14 bg=colour18'
      setw -g window-status-format ' #I#[fg=colour249]:#[fg=colour250]#W#[fg=colour249]#F '
    '';
  };
}
