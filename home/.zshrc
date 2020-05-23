source /usr/share/zsh/share/antigen.zsh
    # Load oh-my-zsh's library
    antigen use oh-my-zsh

    # Load bundles from oh-my-zsh's repo
    antigen bundle git
    antigen bundle pipenv
    antigen bundle pip
antigen apply

neofetch
export PATH="$HOME/.local/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL" 

# navigation
alias ..='cd ..' 
alias ...='cd ../..'

# udiskie
alias usb-mount="udiskie-mount"
alias usb-umount="udiskie-umount"

# vim
alias vim=nvim

# ls
alias ls='exa'

# adding flags
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

### SETS VI MODE ###
bindkey -v

# GPG
export GPG_TTY=$(tty)

# GoLang
export GOPATH="/home/zelezarof/.local/share/go"
export GOBIN="/home/zelezarof/.local/bin"
