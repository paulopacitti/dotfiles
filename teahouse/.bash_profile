# terminal colors
export CLICOLOR=1
export PS1="\[\e[0;32m\]\u \[\e[0;33m\]お茶 \[\e[0;36m\]\W\[\e[0;37m\] ⚡️ \[\e[0m\]"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#top
alias top="vtop"
#custom cat with bat
alias cat="bat"
#python uses python3
alias python="python3"
alias pip="pip3"

# LÖVE2D
alias love="/Applications/love.app/Contents/MacOS/love"
# node env
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# ruby env
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Android env vars
export ANDROID_HOME="/Users/paulopacitti/Library/Android/sdk"
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

# RISC-V
export PATH=$PATH:/opt/riscv/bin

# fuck CLI
eval $(thefuck --alias)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paulopacitti/google-cloud-sdk/path.bash.inc' ]; then . '/Users/paulopacitti/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paulopacitti/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/paulopacitti/google-cloud-sdk/completion.bash.inc'; fi