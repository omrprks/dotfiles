echo "start .zshrc"
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="materialshell"

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
plugins=(zsh-syntax-highlighting)

# Oh My Zsh #
if [[ -d $ZSH ]]; then
	source $ZSH/oh-my-zsh.sh
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

### User Config ###
if [ -f ~/.functions ]; then . ~/.functions; fi
if [ -f ~/.aliases ]; then . ~/.aliases; fi
if [ -f ~/.exports ]; then . ~/.exports; fi
if [ -f ~/.themes ]; then . ~/.themes; fi

LS_COLORS="ow=01;36;40" && export LS_COLORS
echo "end .zshrc"
