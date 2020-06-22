#################################################################################
##                                Antigen Zsh                                   #
#################################################################################
export PATH="$HOME/.local/bin:$PATH"
export VISUAL=vim
export EDITOR="$VISUAL" 

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


autoload -U compinit promptinit
compinit
zstyle ':completion::complete:*' use-cache 1

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Extended GLOB support
setopt extendedglob

# Starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"
