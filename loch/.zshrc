export CLICOLOR=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
PROMPT="%F{yellow}%n%f %F{green}%m%f %F{cyan}%1~%f 🏔️  "

alias history="history 1"
HISTSIZE=99999  
HISTFILESIZE=99999 
SAVEHIST=$HISTSIZE

setopt SHARE_HISTORY HIST_IGNORE_DUPS

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

alias arch-x86="env /usr/bin/arch -x86_64 /bin/zsh"
alias arch-arm="env /usr/bin/arch -arm64 /bin/zsh"

alias cat=bat
export BAT_THEME="gruvbox-dark"

# fzf and fd config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
export FZF_ALT_C_COMMAND='fd --type d --strip-cwd-prefix'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -s "/Users/paulopacitti/.jabba/jabba.sh" ] && source "/Users/paulopacitti/.jabba/jabba.sh"

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export CARGO="$HOME/.cargo/bin/cargo"

# Rust | SDL2 lib
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

# BasicTex
export PATH=/Library/TeX/texbin:$PATH 

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# LLVM config
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
