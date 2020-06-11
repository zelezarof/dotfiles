# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.
export PATH="$HOME/.local/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL" 

# vim 
alias vim="nvim"

# ls
alias ls='exa'

# fonts
alias list-fonts="fc-list -f '%{family}\n' | awk '!x[$0]++'"


# spotify
alias spotify="spt"

# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

### SETS VI MODE ###
set -o vi

# GPG
export GPG_TTY=$(tty)
