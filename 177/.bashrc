#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Aliases
alias ls='ls --color=auto'
alias grep="grep --color=auto"
alias s="sudo"
alias c="cd"
alias l="ls"
alias vi="nvim"
alias vim="nvim"

#Default thingy
PS1='[\u@\h \W]\$ '

#Variables
export EDITOR="nvim"
export VISUAL="nvim"

set -o emacs

