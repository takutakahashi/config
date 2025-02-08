# Load all configurations
for config_file ($HOME/.zsh/config/*.zsh) source $config_file

# Load all functions
for function_file ($HOME/.zsh/functions/*.zsh) source $function_file

# Load external configurations
# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# tabtab completion
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

# Oracle CLI autocomplete
[[ -e "/home/takutaka.linux/lib/oracle-cli/lib/python3.9/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "/home/takutaka.linux/lib/oracle-cli/lib/python3.9/site-packages/oci_cli/bin/oci_autocomplete.sh"

# bun completions
[ -s "/Users/owner/.bun/_bun" ] && source "/Users/owner/.bun/_bun"

# Load dev rc
source ~/.dev/rc

# SSH agent setup
ssh-add -l 2>/dev/null >/dev/null
[ $? -ge 2 ] && rm -f $SSH_AUTH_SOCK && ssh-agent -a "$SSH_AUTH_SOCK" >/dev/null

# SSH key and secrets management
ssh-add -l |grep p5V8d3ayisE23I4oRMksi+3hOYqRY85Zij5D7tp3NC0 >/dev/null 2>/dev/null || doppler secrets get SSH_KEY_WS --plain |ssh-add - >/dev/null 2>/dev/null
ls /tmp/secrets >/dev/null 2>/dev/null || doppler secrets get ENV --plain > /tmp/secrets
chmod 600 /tmp/secrets
source /tmp/secrets