# .bashrc
export PS1="\[\e[35m\][\[\e[m\]\[\e[36m\]\t\[\e[m\]\[\e[35m\]]\[\e[m\] \[\e[32m\]\u\[\e[m\]@\[\e[31m\]\H\[\e[m\]: \w \\$ "
HISTSIZE=1000
HISTFILESIZE=2000

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
trap 'echo -ne "\033]0;$BASH_COMMAND $USER@${HOSTNAME}>$(pwd)\007"' DEBUG
unset rc

#export PS1="\[\e[35m\][\[\e[m\]\[\e[36m\]\t\[\e[m\]\[\e[35m\]]\[\e[m\] \[\e[32m\]\u\[\e[m\]@\[\e[31m\]\H\[\e[m\]: \w \\$ "
#HISTSIZE=1000
#HISTFILESIZE=2000

