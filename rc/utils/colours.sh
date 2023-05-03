#!/usr/bin/env bash

if [[ -n "$__COLOURS_LOADED" ]]; then
    return 0
fi
readonly __COLOURS_LOADED="__LOADED"

# https://www.ditig.com/256-colors-cheat-sheet
readonly __BLACK="0m"
readonly __WHITE="15m"
readonly __BLUE="27m"
readonly __TURQUOISE="30m"
readonly __GREEN="34m"
readonly __CYAN="36m"
readonly __LIGHT_BLUE="39m"
readonly __PALE_GREEN="42m"
readonly __STEEL_BLUE="39m"
readonly __PURPLE="93m"
readonly __RED="124m"
readonly __MAGENTA="127m"
readonly __BROWN="138m"
readonly __LIGHT_MAGENTA="163m"
readonly __DARK_ORANGE="166m"
readonly __ORANGE="172m"
readonly __YELLOW="178m"
readonly __LIGHT_RED="196m"

readonly __PREFIX="\033["
readonly __FOREGROUND="38;"
readonly __BACKGROUND="48;"
readonly __INFIX="5;" # https://man7.org/linux/man-pages/man4/console_codes.4.html
readonly __PFI="$__PREFIX$__FOREGROUND$__INFIX"
readonly __PBI="$__PREFIX$__BACKGROUND$__INFIX"

readonly _NOCOLOUR="\033[0m"
readonly _BOLD="\033[1m"
readonly _UNDERLINE="\033[4m"
readonly _BLINK="\033[5m"
readonly _FSTEEL="$__PFI$__STEEL"
readonly _BSTEEL="$__PBI$__STEEL"
readonly _FBLUE="$__PFI$__BLUE"
readonly _BBLUE="$__PBI$__BLUE"
readonly _FCYAN="$__PFI$__CYAN"
readonly _BCYAN="$__PBI$__CYAN"
readonly _FTURQUOISE="$__PFI$__TURQUOISE"
readonly _BTURQUOISE="$__PBI$__TURQUOISE"
readonly _FLBLUE="$__PFI$__LIGHT_BLUE"
readonly _BLBLUE="$__PBI$__LIGHT_BLUE"
readonly _FGREEN="$__PFI$__GREEN"
readonly _BGREEN="$__PBI$__GREEN"
readonly _FPGREEN="$__PFI$__PALE_GREEN"
readonly _BPGREEN="$__PBI$__PALE_GREEN"
readonly _FMAGENTA="$__PFI$__MAGENTA"
readonly _BMAGENTA="$__PBI$__MAGENTA"
readonly _FLMAGENTA="$__PFI$__LIGHT_MAGENTA"
readonly _BLMAGENTA="$__PBI$__LIGHT_MAGENTA"
readonly _FYELLOW="$__PFI$__YELLOW"
readonly _BYELLOW="$__PBI$__YELLOW"
readonly _FRED="$__PFI$__RED"
readonly _BRED="$__PBI$__RED"
readonly _FLRED="$__PFI$__LIGHT_RED"
readonly _BLRED="$__PBI$__LIGHT_RED"
readonly _FBROWN="$__PFI$__BROWN"
readonly _BBROWN="$__PBI$__BROWN"
readonly _FPURPLE="$__PFI$__PURPLE"
readonly _BPURPLE="$__PBI$__PURPLE"
readonly _FORANGE="$__PFI$__ORANGE"
readonly _BORANGE="$__PBI$__ORANGE"
readonly _FDORANGE="$__PFI$__DARK_ORANGE"
readonly _BDORANGE="$__PBI$__DARK_ORANGE"
readonly _FWHITE="$__PFI$__WHITE"
readonly _BWHITE="$__PBI$__WHITE"
readonly _FBLACK="$__PFI$__BLACK"
readonly _BBLACK="$__PBI$__BLACK"


echo-colour-codes-256 () (
    # https://betterprogramming.pub/25-awesome-linux-command-one-liners-9495f26f07fb
    for code in {0..255}; do 
        echo -e "\e[38;05;${code}m $code: Test"
    done
)

export -f echo-colour-codes-256
