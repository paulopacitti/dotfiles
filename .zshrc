# zsh config
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
  vi-mode
  z
)

ZSH_THEME=robbyrussell
ZSH_TMUX_AUTOSTART=true

zstyle ':omz:update' mode disabled
source $ZSH/oh-my-zsh.sh

VI_MODE_SET_CURSOR=true
VI_MODE_CURSOR_VISUAL=2
VI_MODE_CURSOR_INSERT=0
VI_MODE_CURSOR_NORMAL=2
MODE_INDICATOR=""
bindkey -M viins "jk" vi-cmd-mode
export KEYTIMEOUT=20

export CLICOLOR=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt SHARE_HISTORY
bindkey '\e[D' beginning-of-line
bindkey '\e[F' end-of-line
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

export EDITOR=nvim

# aliases
alias arch-x86="env /usr/bin/arch -x86_64 /bin/zsh"
alias arch-arm="env /usr/bin/arch -arm64 /bin/zsh"

# load secrets
[ -f "$HOME/.secrets" ] && source "$HOME/.secrets"
