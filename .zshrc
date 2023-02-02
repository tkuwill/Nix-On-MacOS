# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b'


# function battery {
	# pmset -g batt | grep -Eo "\d+%" 
 # }
#function battime {
#      pmset -g batt | grep -Eo "\d:\d remaining"
#}

setopt promptsubst
# RPROMPT='%F{232}[%?]| %*%f 🔋$(battery)% '
# PROMPT='  %F{165}%f %F{232}%n@%f%F{18}%m%f  %F{20}in %~ ${vcs_info_msg_0_} %f  
PROMPT='%F{20} %~ ${vcs_info_msg_0_} %f  
%F{6} %#%f  '
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=99999
HISTORY_IGNORE="(ls -l|cd|pwd|exit|la|bye|ranger|mpv|yt-dlp|./batterycycle.sh|tmux| ..)"
setopt beep nomatch
unsetopt autocd extendedglob notify
# Use C-x C-e to open the default editor to edit the command line
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
# # set zsh to emacs mode
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/will/.zshrc'
zstyle ':completion:*' menu yes select
autoload -Uz compinit
compinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting.git/zsh-syntax-highlighting.zsh

# End of lines added by compinstall
alias lah="ls -lah --color=auto"
alias la="ls -la --color=auto"
alias la="ls -Gla"
alias ls -la="ls -la --color=auto"
#alias ls="ls --color"
# alias ls="ls -G"
alias ls -l="ls -Gl"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# export LESS_TERMCAP_mb=$'\E[01;4m'       # begin blinking
# export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
# export LESS_TERMCAP_me=$'\E[0m'           # end mode
# export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
# export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
# export LESS_TERMCAP_ue=$'\E[0m'           # end underline
# export LESS_TERMCAP_us=$'\E[04;38;5;76m' # begin underline

export MANPAGER="/bin/sh -c \"col -b | vim --noplugin -c 'set ft=man ts=8 nomod nolist nonu noma' -\""

