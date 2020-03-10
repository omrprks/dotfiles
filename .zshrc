autoload -U compinit colors
colors
compinit -u

setopt promptsubst

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"
[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"

local USER_NAME="%{$fg[red]%}%n%{$reset_color%}"
local MACHINE="%{$fg[red]%}%m%{$reset_color%}"
local DIR="%{$fg[yellow]%}%(5~|%-1~/.../%3~|%4~)"
local GIT_BRANCH="%{$fg[green]%}\$(parseGitBranch)%{$reset_color%}"
export PS1="${USER_NAME}@${MACHINE}:${DIR}${GIT_BRANCH} $ "
