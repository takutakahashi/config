# Basic aliases
alias la='ls -a'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias vim=nvim

# OS specific ls aliases
case ${OSTYPE} in
    darwin*)
        alias ls='ls -G -F'
        ;;
    linux*)
        alias ls='ls -F --color=auto'
        ;;
esac

# Custom aliases
alias c="tmux show-buffer |xsel -bi"
alias ks="kubectx |peco |xargs kubectx"

# sudo alias
alias sudo='sudo '

# Global aliases
alias -g L='| less'
alias -g G='| grep'

# Clipboard aliases
if which pbcopy >/dev/null 2>&1 ; then
    # Mac
    alias -g C='| pbcopy'
elif which xsel >/dev/null 2>&1 ; then
    # Linux
    alias -g C='| xsel --input --clipboard'
elif which putclip >/dev/null 2>&1 ; then
    # Cygwin
    alias -g C='| putclip'
fi