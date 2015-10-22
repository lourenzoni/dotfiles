# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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


# LEANDRO

# Permitir CTRL-s para forward search no bash
stty -ixon

# CNTLM Proxy (/etc/cntlm.conf)
export http_proxy=http://127.0.0.1:1234
export https_proxy=https://127.0.0.1:1234
export ftp_proxy=http://127.0.0.1:1234
export HTTP_PROXY=http://127.0.0.1:1234
export HTTPS_PROXY=https://127.0.0.1:1234
export FTP_PROXY=http://127.0.0.1:1234

# Usuario e senha para scripts do Jira
export user=uq4x
export password=senhaP99

# GIT PROXIES
#git config --global http.proxy http://localhost:1234
#git config --global https.proxy http://localhost:1234

# SVN VigRES
export snepsvn=http://snepsvn.ep.petrobras.com.br/svn/portalgedig/modulos
export atual=$snepsvn/VigilanciaReservatorio/atual
export ramos=$snepsvn/VigilanciaReservatorio/ramos

# Grails autocomplete
_grailsscripts() {
    SCRIPT_DIRS="$GRAILS_HOME/scripts ./scripts ~/.grails/scripts"
    if [ -d plugins ]
        then for PLUGIN_DIR in $(ls -d plugins/*/scripts 2> /dev/null); do
        SCRIPT_DIRS="$SCRIPT_DIRS $PLUGIN_DIR"
        done
    fi

    for D in $SCRIPT_DIRS; do
        if [ -d $D ]
            then ls -1 $D/*.groovy 2> /dev/null | sed -E 's/(.*)\/(.*)\.groovy/\2/' | sed -E 's/([A-Z])/-\1/g' | sed -E 's/^-//' | tr "[:upper:]" "[:lower:]"
        fi
    done | sort | uniq | grep -vE "^_"
}

_grails() {
    COMPREPLY=( $(compgen -W "$(_grailsscripts)" -- ${COMP_WORDS[COMP_CWORD]}) )
}

complete -F _grails grails

alias cmds='cat ~/Documentos/comandos.txt | more'

# TODO.TXT

export TODO_FILE='/home/leandro/Workspace/Git/todo/todo.txt'
export TODOTXT_DEFAULT_ACTION=ls
# export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort -k 2,2 -k 1,1n'
export TODOTXT_SORT_COMMAND='env LC_COLLATE=C sort'
export PATH=$PATH:"/home/leandro/Workspace/Git/todo/"
alias td='todo.sh -d /home/leandro/.todo/config'
alias tdc='todo.sh -d /home/leandro/.todo/config lsc'
alias tdprj='todo.sh -d /home/leandro/.todo/config lsprj'
alias tdadd='todo.sh -d /home/leandro/.todo/config add'
alias tdedit='vim ~/Workspace/Git/todo/todo.txt'
alias tdtime='vim ~/Workspace/Git/todo/punch.dat'
alias tddone='vim ~/Workspace/Git/todo/done.txt'
alias tdstart='python /home/leandro/Workspace/Git/punch/Punch.py in'
alias tdclock='while true; do sleep 10 && tdstatus; done'
alias tdstatus='python /home/leandro/Workspace/Git/punch/Punch.py what'
alias tdstop='python /home/leandro/Workspace/Git/punch/Punch.py out'
alias tdreport='python /home/leandro/Workspace/Git/punch/Punch.py report'
alias tdarchive='python /home/leandro/Workspace/Git/punch/Punch.py archive `date +%Y-%m-%d`'
