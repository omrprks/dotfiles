shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

HISTFILE=${HOME}/.histfile
HISTSIZE=10000
SAVEHIST=10000

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"

[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"

if [ -d "/usr/local/opt/nvm" ]; then
  export NVM_DIR="${HOME}/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \
    . "/usr/local/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && \
    . "/usr/local/opt/nvm/etc/bash_completion"
fi

if [ -L "/usr/local/opt/php@7.2" ]; then
  export PATH="/usr/local/opt/php@7.2/sbin:/usr/local/opt/php@7.2/bin:$PATH"
fi
