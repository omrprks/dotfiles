shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"
