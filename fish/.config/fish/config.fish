##########################################################
##                       Term                           ##
##########################################################
set TERMINAL alacritty
 

##########################################################
##                      Editor                          ##
##########################################################
set EDITOR vim
set VISUAL vim


##########################################################
##                        XDG                           ##
##########################################################
set XDG_CONFIG_HOME $HOME/.config
set XDG_CACHE_HOME $HOME/.cache
set XDG_DATA_HOME $HOME/.local/share
set XDG_STATE_HOME $HOME/.local/state


##########################################################
##                       PATH                           ##
##########################################################
if test -d $HOME/.local/bin && not contains $HOME/.local/bin $PATH
    set PATH $HOME/.local/bin $PATH
end
if test -d $XDG_CONFIG_HOME/emacs/bin
    set PATH $PATH $XDG_CONFIG_HOME/emacs/bin
end


##########################################################
##                       GO                             ##
##########################################################
set GOPATH $HOME/.local/share/go
set GOBIN $GOPATH/bin
if test -d $GO/bin && not contains $GOBIN $PATH
    set PATH $PATH $GOBIN
end


if status is-interactive
    # Commands to run in interactive sessions can go here
end

