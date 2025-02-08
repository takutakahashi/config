# Enable completion
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Don't complete parent directory
zstyle ':completion:*' ignore-parents parent pwd ..

# Completion for sudo
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# Process name completion for ps command
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# Directory colors in completion
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'