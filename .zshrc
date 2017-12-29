[ -d $HOME/.oh-my-zsh ] && export ZSH=$HOME/.oh-my-zsh

[ -f $ZSH/themes/materialshell.zsh-theme ] && \
	ZSH_THEME="materialshell" || \
	ZSH_THEME="refined"

CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd/mm/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(zsh-syntax-highlighting)

# Oh My Zsh #
if [[ -d $ZSH ]]; then
	source $ZSH/oh-my-zsh.sh
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

### User Config ###
[ -f ~/.functions ] && . ~/.functions
[ -f ~/.aliases ] && . ~/.aliases
[ -f ~/.exports ] && . ~/.exports
[ -f ~/.themes ] && . ~/.themes

LS_COLORS="ow=01;36;40" && export LS_COLORS

cd ~
