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


export LS_COLORS="fi=1;37:rs=0:di=1;35:ln=1;32:mh=1;36:pi=1;36:so=1;36:do=1;36:bd=1;36:cd=1;36:or=1;36:mi=1;36:su=1;36:sg=1;36:ca=1;36:tw=1;4;35:ow=1;4;35:st=1;4;32:ex=1;31"
export PS1="\[\033[1;34m\]\u \[\033[1;36m\]\w \[\033[1;32m\]$\[\033[0;37m\] "
export TERM=xterm-256color
export MICRO_TRUECOLOR=1
alias dot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
