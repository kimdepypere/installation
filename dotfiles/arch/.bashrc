#
# ~/.bashrc
#

# ARCH bashrc file
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/userscripts/execscripts
export PATH=$PATH:~/userscripts/execscripts/sync
export GOPATH=~/Documents/projects/golang
export PATH="$PATH:$GOPATH/bin"
