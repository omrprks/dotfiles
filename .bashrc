shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

[[ -r "${HOME}/.functions" ]] && . "${HOME}/.functions"
[[ -r "${HOME}/.exports" ]] && . "${HOME}/.exports"
[[ -r "${HOME}/.aliases" ]] && . "${HOME}/.aliases"
[[ -r "${HOME}/.extras" ]] && . "${HOME}/.extras"

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		color_prompt=yes
	else
		color_prompt=
	fi
fi

if [ "$color_prompt" = yes ]; then
	# PS1='\
	# ${debian_chroot:+($debian_chroot)}\
	# \[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1="\
\[\033[00;31m\]\u\
\[\033[00;35m\] at \
\[\033[00;31m\]\h\
\[\033[00;35m\] in \
\[\033[00;32m\]\w\
\[\033[00;34m\]$(parseGitBranch)\n\
\[\033[01;33m\]\$\
\[\033[00m\] "
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h: \w$(parseGitBranch)\n\$ '
fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
*)
	;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

LS_COLORS="ow=01;36;40" && export LS_COLORS
