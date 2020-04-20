autoload -U compinit colors
colors
compinit -u

setopt promptsubst

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"
[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"
[[ -r "${HOME}/.prompt" ]] && . "${HOME}/.prompt"

if [[ -r "/usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh" ]]; then
  source "/usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh"
fi
