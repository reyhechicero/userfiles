#
# ~/.bashrc
#
####################THE GRIMOIRE###################
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoredups:erasedups
export EDITOR='vim'
export MAKEFLAGS="-j3 -l2"

set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

## tt quotes categories
export wiz='/home/wizard/tt/quotes/wiz'

## ls shortcuts & overwriting ls to exa
alias ls='exa -la --color=always --group-directories-first'
alias la='exa -a  --color=always --group-directories-first'
alias ll='exa -l  --color=always --group-directories-first'
alias lt='exa -aT --color=always --group-directories-first' # tree listing

## general shortcuts
alias g='git'
alias grep='grep --color=auto'
alias ping='ping -c 3'
#alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias sn='doas shutdown -h now'
alias sr='doas shutdown -r now'
alias top='htop'
alias df='df -h'
alias play='mpv --fs'
alias nmpv='mpv --no-video'
alias yta='youtube-dl --extract-audio --audio-format best'
alias ytv='youtube-dl -f bestvideo+bestaudio'
alias gpgkey='gpg --list-secret-keys --keyid-format LONG'
alias ttq='tt -quotes'
alias z='zathura'
alias pm='pulsemixer'

## find top RAM eaters
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

## find top CPU eaters
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'

## Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

PS1="\[\e[33m\][\[\e[m\]\[\e[36m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[35m\]\h\[\e[m\] \[\e[m\]\W\[\e[m\]\[\e[33m\]]\[\e[m\]\[\e[32m\]\\$\[\e[m\] "

## The Magical Directory Jumper
fd() {
 local dir
 dir=$(find ${1:-.} -path '*/\.*' -prune \
 -o -type d -print 2> /dev/null | fzf +m) &&
 cd "$dir"
	}

alias fdr="fd /"

echo -E " (\.   \      ,/)"
echo -E "  \(   |\     )/"
echo -E "  //\  | \   /\\"
echo -E " (/ /\_#oo#_/\ \)"
echo -E "  \/\  ####  /\/"
echo -E "       '##'"
echo
echo 'Welcome Wizard!'
