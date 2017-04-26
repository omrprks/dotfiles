# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="materialshell"
# ZSH_THEME="pure"

CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git brew)

# Oh My Zsh #
source $ZSH/oh-my-zsh.sh

### User Config ###
# Functions #
if [ -f ~/.functions ]; then . ~/.functions; fi

# Aliases #
if [ -f ~/.aliases ]; then . ~/.aliases; fi

# Exports #
if [ -f ~/.exports ]; then . ~/.exports; fi

# Themes #
if [ -f ~/.themes ]; then . ~/.themes; fi

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
