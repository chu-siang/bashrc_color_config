# ---- ls color (folder white) ----
if [ -n "$LS_COLORS" ]; then
    export LS_COLORS=$(echo $LS_COLORS | sed 's/di=[^:]*:/di=01;37:/')
else
    eval "$(dircolors -b)"
    export LS_COLORS=$(echo $LS_COLORS | sed 's/di=[^:]*:/di=01;37:/')
fi

alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# ---- prompt color ----
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;37m\]\w\[\033[00m\]\$ '
