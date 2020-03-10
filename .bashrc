shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"
[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"
