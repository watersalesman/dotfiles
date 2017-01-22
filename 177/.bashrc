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

#Default thingy
PS1='[\u@\h \W]\$ '

#Variables
export EDITOR="vim"
export VISUAL="vim"

#VI KEYBINDINGS!!!
set -o emacs

