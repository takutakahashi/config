# VCS info configuration
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
autoload -U colors
colors

zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} ${vcs_info_msg_0_} %~
%# "
}
add-zsh-hook precmd _update_vcs_info_msg