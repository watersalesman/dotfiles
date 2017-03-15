#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Merge .Xresources
#xrdb ~/.Xdefaults

#Aliases
alias ls='ls --color=auto'
alias grep="grep --color=auto"
alias s="sudo"
alias c="cd"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias vi="nvim"
alias vim="nvim"
alias v="nvim"
alias sv="sudo nvim"
alias urxvt='urxvt -e tmux'

#Default thingy
PS1='\e[0;34m[\u|\h]\e[m(\W) \$ '

#Variables
export EDITOR="nvim"
export VISUAL="nvim"

set -o emacs
