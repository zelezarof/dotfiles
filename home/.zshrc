source /usr/share/zsh/share/antigen.zsh
    # Load oh-my-zsh's library
    antigen use oh-my-zsh

    # Load bundles from oh-my-zsh's repo
    antigen bundle git
    antigen bundle pipenv
    antigen bundle pip
antigen apply

# Setup Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

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
