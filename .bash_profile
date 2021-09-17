# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

alias xi='sudo xbps-install -Su'
alias xr='sudo xbps-remove -R'

alias cc='clear'
alias n='neofetch'
alias l='ls -a'
. "$HOME/.cargo/env"
