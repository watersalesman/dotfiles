# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
bindkey -e
zstyle :compinstall filename '/home/userpc/.zshrc'

#Path
fpath=(~/.zsh/completion $fpath)

autoload -Uz compinit && compinit -i


#History Searching
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

#Autocompletion
zstyle ':completion:*' menu select		#Autocompletion menu
zstyle ':completion:*' rehash true

#Keybindings
bindkey "\e[3~" delete-char

#Keyboard repeat rate
xset r rate 200 65

#Prompt
autoload -U colors && colors
PS1="%{$fg[red]%}[%{$fg[cyan]%}%n%{$fg[red]%}|%{$fg[cyan]%}%m%{$fg[red]%}] %{$fg[white]%}%1~% %{$fg[red]%} %(#.#.>>)%{$reset_color%} "

#Aliases
alias cl="clear"
alias ls='ls --color=auto'
alias grep="grep --color=auto"
alias s="sudo"
alias c="cd"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias vim='nvim'
alias vi="nvim"
alias v="nvim"
alias sv="sudo nvim"
alias e='emacsclient'
alias docker='sudo docker'
alias py='python3'
alias dnfi='s dnf install'
alias dnfs='dnf search'
alias dnfr='s dnf remove'
alias dnfu='s dnf upgrade'
alias iipdate='scp -r ~/mega/2017-2018_Fall/iip/public_html/ math:~/'

#Variables
export EDITOR="nvim"
export VISUAL="nvim"

# support colors in less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'