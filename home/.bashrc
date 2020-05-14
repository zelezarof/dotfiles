#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias tree='tree -I .git'

export EDITOR='vim'
PS1='[\u@\h \W]\$ '
