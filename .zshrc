autoload -U compinit
compinit -u

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"
[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"
