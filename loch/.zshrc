# -- zsh config

export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
  z
)

ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh

PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%n %{$fg[cyan]%}%1~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

export CLICOLOR=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias history="history 1"
HISTSIZE=99999
HISTFILESIZE=99999
SAVEHIST=$HISTSIZE

setopt SHARE_HISTORY HIST_IGNORE_DUPS

bindkey '\e[D' beginning-of-line
bindkey '\e[F' end-of-line
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

alias arch-x86="env /usr/bin/arch -x86_64 /bin/zsh"
alias arch-arm="env /usr/bin/arch -arm64 /bin/zsh"

export BAT_THEME="gruvbox-dark"

# -- software config

# fzf and fd config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_ALT_C_COMMAND='fd --type d --strip-cwd-prefix'

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Java
[ -s "/Users/paulopacitti/.jabba/jabba.sh" ] && source "/Users/paulopacitti/.jabba/jabba.sh"

# Android
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# Rust | SDL2 lib
export CARGO="$HOME/.cargo/bin/cargo"
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# LLVM config
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -Wl,-rpath,/opt/homebrew/opt/llvm/lib/c++"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)
export LIBRARY_PATH="$LIBRARY_PATH:$SDKROOT/usr/lib"

# RISC-V
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/bison/lib"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
alias gnumake=make
export LDFLAGS="-L/opt/homebrew/opt/openssl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl/include"

# Verilog
alias activate_eda="source $HOME/eda/oss-cad-suite/environment"
export PATH=$PATH:~/.local/bin # temporary (limited to the current terminal)
