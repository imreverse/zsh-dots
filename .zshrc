#
# ▒███████▒  ██████  ██░ ██  ██▀███   ▄████▄
# ▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒▓██ ▒ ██▒▒██▀ ▀█
# ░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░▓██ ░▄█ ▒▒▓█    ▄
#   ▄▀▒   ░  ▒   ██▒░▓█ ░██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
# ▒███████▒▒██████▒▒░▓█▒░██▓░██▓ ▒██▒▒ ▓███▀ ░
# ░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒░ ▒▓ ░▒▓░░ ░▒ ▒  ░
# ░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░  ░▒ ░ ▒░  ░  ▒
# ░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░  ░░   ░ ░
#   ░ ░          ░   ░  ░  ░   ░     ░ ░
# ░                                  ░
#


# Source
source "${ZDOTDIR}/plugins/antigen.zsh"

# Plugins
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen theme romkatv/powerlevel10k
antigen apply
## P10K
[[ ! -f ${ZDOTDIR}/plugins/p10k.zsh ]] || source ${ZDOTDIR}/plugins/p10k.zsh

# Aliases
alias ls="exa --classify --git --group-directories-first --icons --time-style=long-iso -lhTL1"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias zhist="${EDITOR} ${ZDOTDIR}/.zhistory"
alias zshrc="${EDITOR} ${ZDOTDIR}/.zshrc"
alias zupdate="curl -L git.io/antigen > ${ZDOTDIR}/plugins/antigen.zsh"
alias logout="loginctl terminate-user ${USER}"

# Options
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#444444"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Vi Mode
bindkey -v '^?' backward-delete-char
bindkey '^[ ' autosuggest-accept
bindkey '^[k' history-substring-search-up
bindkey '^[j' history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# The following lines were added by compinstall
zstyle :compinstall filename "${ZDOTDIR}/.zshrc"
autoload -Uz compinit; compinit
# End of lines added by compinstall
