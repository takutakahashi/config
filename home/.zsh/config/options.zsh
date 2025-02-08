# History
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# Various options
setopt print_eight_bit      # Enable Japanese file names
setopt no_beep             # Disable beep
setopt no_flow_control     # Disable flow control
setopt ignore_eof          # Prevent Ctrl+D from exiting shell
setopt interactive_comments # Enable comments in interactive mode
setopt auto_pushd          # Auto pushd on cd
setopt pushd_ignore_dups   # Ignore duplicates in pushd
setopt share_history       # Share history between sessions
setopt hist_ignore_all_dups # Ignore duplicates in history
setopt hist_ignore_space   # Ignore commands starting with space
setopt hist_reduce_blanks  # Remove extra blanks from commands
setopt extended_glob       # Extended globbing