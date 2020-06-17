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
alias t='tmux at || tmux'
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dce='docker-compose exec'
alias dcl='docker-compose logs --tail=100'
alias dct='docker-compose logs -f --tail=100'
alias pem='openssl x509 -text -noout'

alias k='kubectl'

alias kp='k --context=prod --namespace=bb3-production'
alias kd='k --context=prod --namespace=default'
alias kk='k --context=prod --namespace=kube-system'
alias kag='k --context=prod get --all-namespaces'

alias kds='k --context=dev  --namespace=bb3-staging'
alias kdd='k --context=dev --namespace=default'
alias kdk='k --context=dev --namespace=kube-system'
alias kdi='k --context=dev --namespace=istio-system'
alias kdag='k --context=dev get --all-namespaces'
