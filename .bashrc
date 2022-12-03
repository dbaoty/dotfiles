#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

reset="\[\e[0m\]"

# Magic Bash Prompt Version 1.0.1
next_hue()
{
    color=$((31 + (++color % 7)))   # set 31 to 30 for dark on light
    PS1="\[\e[1;${color}m\]\\$ $reset"  # set 1 to 0 for dark on light
}

random_hue()
{
    color=$(($RANDOM % 7 + 31)) # set 31 to 30 for dark on light
    PS1="\[\e[1;${color}m\]\\$ $reset"  # set 1 to 0 for dark on light
}

PROMPT_COMMAND="random_hue"
