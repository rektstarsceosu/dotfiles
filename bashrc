# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=-1
HISTFILESIZE=-1

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# should be on the output of commands, not on the prompt
force_color_prompt=yes

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias svim="sudo vim"
alias apt="sudo apt"
alias pacman="sudo pacman"
alias fortune="fortune -a"
############################################################################
alias dir="ls -al"       # `dir` will now show detailed list like `ls -al`
alias copy="cp"          # `copy` to use `cp`
alias move="mv"          # `move` to use `mv`
alias del="rm"           # `del` to use `rm`
alias md="mkdir"         # `md` (make directory) to use `mkdir`
alias rd="rmdir"         # `rd` (remove directory) to use `rmdir`
alias ren="mv"           # `ren` (rename) to use `mv`
alias cls="clear"        # `cls` to clear the terminal
alias type="cat"         # `type` to display file contents using `cat`
alias erase="rm"         # `erase` to remove files using `rm`
alias tree="tree -C"     # `tree` command in Uni135

export PS1="\[$(tput bold)\]\[$(tput setaf 77)\][\[$(tput setaf 39)\]\u\[$(tput setaf 77)\]:\[$(tput setaf 226)\]\w\[$(tput setaf 77)\]]\[$(tput setaf 81)\]% \[$(tput sgr0)\]"

if [ ! -f ~/.inputrc ];then
	echo 'set completion-ignore-case On' >> ~/.inputrc
fi

fortune -s | cowsay -e "><" -T "U" | lolcat --spread=1.5

