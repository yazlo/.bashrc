# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export PATH=$PATH:/home/robgust/bin
export TERM=xterm-256color
export EDITOR=vim
export GREP_OPTIONS='--color=auto'
export PS1="\e[1;33m\n\u\e[m@\e[1;32m\h\e[m:\e[1;31m\[\t\e[m -> \e[1;35m\$PWD\e[m\n$ "
## Longer history
export HISTCONTROL=ignoredups
export HISTCONTROL=erasedups
export HISTTIMEFORMAT="%F %T %Z: "
export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist
## Color man pages
export LESS_TERMCAP_mb=$'\e[01;34m'  
export LESS_TERMCAP_md=$'\e[01;34m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[38;05;111m;'
#
sbs() { du -b --max-depth 1 | sort -nr | perl -pe 's{([0-9]+)}{sprintf "%.1f%s", $1>=2**30? ($1/2**30, "G"):    $1>=2**20? ($1/2**20, "M"): $1>=2**10? ($1/2**10, "K"): ($1, "")}e';} 
#
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
#
alias psgrep='ps auxww |grep -i'
alias grep='grep -i'
alias ls='ls -FG --color=auto'
alias ll='ls -g --color -F -h -o'
alias la='ls -A --color -F'
alias lsd='ls -alF |grep /grep$'
alias 1.="cd .."
alias 2.="cd ../.."
alias 3.="cd ../../.."
alias 4.="cd ../../../.."
alias please='sudo $(history -p \!\!)'
rtfm() { $@ --help 2> /dev/null || man $@ 2> /dev/null || open "http://www.google.com/search?q=$@"; }
alias tableflip='echo -e "\n\t(╯°□°）╯︵ ┻━┻\n"'
alias settable='echo -e "\n\t┬──┬ ノ( ゜-゜ノ)\n"'
/home/robgust/bin/hnmn
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
