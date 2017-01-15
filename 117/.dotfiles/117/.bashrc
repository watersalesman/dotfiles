#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep="grep --color=auto"
alias s="sudo"
alias c="cd"
alias l="ls"
PS1='[\u@\h \W]\$ '
export EDITOR="vim"
export VISUAL="vim"
set -o vi
