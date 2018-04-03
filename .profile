eval "$(pyenv init -)"
alias ls="ls -G"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=/usr/local/bin:$PATH

:<<COMMENT
    Activate a python venv. Assumes standard setup and you are in the local
    directory.

    See:
    - https://stackoverflow.com/questions/13122137/how-to-source-virtualenv-activate-in-a-bash-script
COMMENT
#ACTIVATE: For "aliaf" command (with an 'f'). Must end with a newline.
ACTIVATE="Activate a python venv. Assumes standard directory setup.\n"
activate () {
  . ./bin/activate
}
