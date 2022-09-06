export CLICOLOR=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
PROMPT="%F{yellow}%n%f %F{green}%m%f %F{blue}%1~%f ⛰  "

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

alias docker=podman
export DOCKER_HOST='unix:///Users/paulopacitti/.local/share/containers/podman/machine/podman-machine-default/podman.sock'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -s "/Users/paulopacitti/.jabba/jabba.sh" ] && source "/Users/paulopacitti/.jabba/jabba.sh"

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export DOCKER_HOST='unix:///Users/paulopacitti/.local/share/containers/podman/machine/podman-machine-default/podman.sock'