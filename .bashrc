# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

#if [ "$_fixedpath" == "" ]; then
#  PATH="/usr/local/bin:$PATH"
#  [ -x /usr/bin/git ] && PATH=$PATH:`git --exec-path`
#  export _fixedpath=1
#fi

alias git-lg='git lg'

# Append, don't overwrite history
shopt -s histappend


# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias ls='ls -F'

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='\n${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profiles
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi
#. /etc/bash_completion.d/git

#bind '"\e[A"':history-search-backward
#bind '"\e[B"':history-search-forward

# Set the current path as the window title
#export PS1=$PS1"\[\e]0;\H:\w\a\]"

# This line was appended by KDE
# Make sure our customised gtkrc file is loaded.
# (This is no longer needed from version 0.8 of the theme engine)
# export GTK2_RC_FILES=$HOME/.gtkrc-2.0
