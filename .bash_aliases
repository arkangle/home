if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim -p'
alias wyrd='LESS= wyrd'
bind -m vi-insert "\C-l":clear-screen
alias minecraft='java -Xmx1024M -Xms1024M -jar ~/minecraft/minecraft.jar'
alias cap2esc="xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'"
alias py='python3'
alias s='sudo -E -u www-data'
alias sim='sudo -E -u www-data vi'
alias t='tmux at || tmux'

