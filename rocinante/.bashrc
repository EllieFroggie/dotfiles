#
# ~/.bashrc
#

[[ $- != *i* ]] && return # If not running interactively, don't do anything

# Terminal
export TERM=xterm-256color
PS1='\[\e[94m\][\[\e[93m\]\u\[\e[92m\]@\[\e[95m\]\h\[\e[0m\] \[\e[96m\]\w\[\e[94m\]]\[\e[0m\]\\$ '

# Aliases file
source ~/.bash_aliases

# Colored man pages
export GROFF_NO_SGR=1
man() {
 LESS_TERMCAP_md=$'\e[4;33m' \
 LESS_TERMCAP_me=$'\e[0m' \
 LESS_TERMCAP_us=$'\e[01;35m' \
 LESS_TERMCAP_ue=$'\e[0m' \
 LESS_TERMCAP_so=$'\e[45;93m' \
 LESS_TERMCAP_se=$'\e[0m' \
 command man "$@"
}

# Motd on terminal open
fastfetch -c ~/.config/fastfetch/small.jsonc --logo ~/.config/fastfetch/archlogo.txt --logo-color-2 blue

