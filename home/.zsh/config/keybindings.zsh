# Emacs key bindings
bindkey -e

# Word style
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified

# Peco history search
bindkey '^R' peco-history-selection

# Peco ghq
bindkey '^g' peco-src

# Enter key behavior
bindkey '^m' do_enter