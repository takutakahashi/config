# peco + ghq integration
function peco-src () {
  local selected_dir=$(find `ghq root` -mindepth 3 -maxdepth 3 -type d | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src

# peco history search
function peco-history-selection() {
    BUFFER=`history -n 1 | perl -e 'print reverse <>' ${@+"$@"}  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N peco-history-selection