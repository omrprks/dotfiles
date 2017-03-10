# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/omrprks/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="materialshell-oceanic"

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
# Aliases #
if [ -f ~/.aliases ]; then . ~/.aliases; fi

# Functions #
if [ -f ~/.functions ]; then . ~/.functions; fi

# Exports #
if [ -f ~/.exports ]; then . ~/.exports; fi

# Themes #
if [ -f ~/.themes ]; then . ~/.themes; fi

# Zsh Completion #
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh