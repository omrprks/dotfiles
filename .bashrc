shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"

[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"

if [ -d "/usr/local/opt/nvm/nvm.sh" ]; then
  export NVM_DIR="${HOME}/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \
    . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \
    . "/usr/local/opt/nvm/etc/bash_completion"
fi
