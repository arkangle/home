# ~/.bash_profile: executed by bash(1) for login shells.
umask 022

export PATH="$HOME/bin:$PATH"
export PS1="\[\033]0;${USER}@${HOSTNAME}\007\e[31m\]\w\[\e[m\] >> "

export EDITOR=vim
export PAGER=less 
export HOSTNAME=`/bin/hostname`
export LESS="-SFX"
export TERM=xterm-256color

if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ]; then
  export INPUTRC=/etc/inputrc
elif [ -f "$HOME/.inputrc" ]; then
  export INPUTRC=$HOME/.inputrc
fi
if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc
	export BASH_ENV=$HOME/.bashrc
fi
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
export PS1='\[\033]0;${USER}@${HOSTNAME}\007\e[31m\]\w\[\e[32m\]$(__git_ps1 " (%s)")\[\e[m\] >> '
fi
export FZF_DEFAULT_COMMAND='ag -g ""'
