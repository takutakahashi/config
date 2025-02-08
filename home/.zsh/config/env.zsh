export LANG=ja_JP.UTF-8
export SHELL=/bin/zsh
export GOPATH=~/.go
export PATH=$PATH:$HOME/.dev/bin:$HOME/.go/bin:/usr/local/bin:/usr/bin:/bin
export PATH="/usr/local/sessionmanagerplugin/bin:${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export KUBECONFIG=`kubeconfig.sh | tail -1`
export SSH_AUTH_SOCK=~/.ssh/ssh-agent.sock
export EDITOR=vim
export PATH=$PATH:$HOME/.local/bin

# Colors for ls
export CLICOLOR=1
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'

# Homebrew
ls /opt/homebrew/bin/brew >/dev/null 2>&1 && eval $(/opt/homebrew/bin/brew shellenv)

# Load switch
INSTALLATION_PATH=$(brew --prefix switch) && source $INSTALLATION_PATH/switch.sh

# rtx (Runtime Manager)
eval "$(~/.dev/bin/rtx activate zsh)"