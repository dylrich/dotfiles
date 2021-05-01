# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

PATH="$HOME/go/bin:$PATH"

export PATH

alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
