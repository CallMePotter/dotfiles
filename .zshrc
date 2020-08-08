# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[white]%}[%{$fg[blue]%}%n%{$fg[white]%}@%{$fg[blue]%}%M %{$fg[white]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# Load aliases and shortcuts if existent.
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias yay='yay --color=auto'

alias nvim='nvim -u ~/.config/nvim/nvimrc'
alias sudonvim='sudo nvim -u ~/.config/nvim/nvimrc'

alias piodir='cd ~/Projects/PlatformIO/'
alias piorun='pio run --target upload'
alias piomonitor='pio device monitor'

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

alias i3config='nvim ~/.config/i3/config'
alias zshrc='nvim ~/.zshrc'
alias nvimrc='nvim ~/.config/nvim/nvimrc'
alias polybarconfig='nvim ~/.config/polybar/config.ini'

# Neofetch
/opt/shell-color-scripts/colorscript.sh -e pacman

#PATH
export PATH=$PATH:/home/potter/.cargo/bin
export PATH=$PATH:/home/potter/.local/bin

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
