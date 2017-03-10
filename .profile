if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
	fi
fi

if [ -d "$HOME/bin" ] ; then PATH="$HOME/bin:$PATH"; fi

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"