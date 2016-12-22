#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/userscripts/execscripts
export PATH=$PATH:~/userscripts/execscripts/sync
export PATH=$PATH:~/userscripts/execscripts/vimswitch
export PATH=$PATH:~/userscripts/installation/optional
export TERM=xterm-256color

# GOLANG
export GOPATH=~/Documents/projects/golang
export PATH="$PATH:$GOPATH/bin"
