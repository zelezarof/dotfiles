################################################################################
#                                Base16 Shell                                  #
################################################################################
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"


################################################################################
#                                Antigen Zsh                                   #
################################################################################
source /home/zelezarof/.local/share/antigen/antigen.zsh
    # Load oh-my-zsh's library
    antigen use oh-my-zsh

    # Load bundles from oh-my-zsh's repo
    antigen bundle git
    antigen bundle pipenv
    antigen bundle pip
antigen apply


export PATH="$HOME/.local/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL" 

# vim
alias vim=nvim

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
bindkey -v

# GPG
export GPG_TTY=$(tty)

# Gentoo
zstyle ':completion::complete:*' use-cache 1
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
