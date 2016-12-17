#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft

#
# SHELL SETTINGS
#

declare -r SRC_DIR  # defined in run.sh
declare -r SRC_FILE # defined in run.sh

declare -r CONFIG_LOADED=true
declare -r CONFIG_VERSION="0.0.9"
declare -r CONFIG_DEBUG=false

#
# FONTS SETTINGS
#
declare -r FONT_ERR="\033[1;40;91m"
declare -r FONT_WARN="\033[1;40;93m"
declare -r FONT_OK="\033[1;40;92m"
declare -r FONT_BOLD="\033[1m"
declare -r FONT_UNDERLINED="\033[4m"
declare -r FONT_DIM="\033[2m"
declare -r FONT_INVERT="\033[7m"
declare -r FONT_BLINK="\033[5m"
declare -r FONT_PINK="\033[95m"
declare -r FONT_CYAN="\033[36m"
declare -r FONT_RESET="\033[0m"

#
# MESSAGE SETTINGS
#
declare -r PREFIX_ERR="${FONT_ERR} [ ✘ ] "
declare -r PREFIX_WARN="${FONT_WARN} [ ⚡ ] "
declare -r PREFIX_OK="${FONT_OK} [ ✓ ] "

declare -r PREFIX_HAPPY="${FONT_OK} [ ☺  ]"
declare -r PREFIX_SAD="${FONT_ERR} [ ☹  ]"

#
# ERROR SETTINGS
#
declare -r ERROR_COLOR_TITLE="\033[1;41;97m"
declare -r ERROR_COLOR_MSG="\033[0;40;93m"
declare -r ERROR_MSG_DEFAULT="GOD DAMN IT - SOMETHING WENT WRONG"

#
# DIALOG SETTINGS
#
# Auto-size with height and width = 0. Maximize with height and width = -1.
# Global-auto-size if also menu_height/list_height = 0.
declare -r GUI_MSGBOX_HEIGHT=6
declare -r GUI_MSGBOX_WIDTH=50

#
# BACKUP SETTINGS
#
declare -r BACKUP_ROOT="/Users/${USER}/devops"
declare -r BACKUP_SRC="bash-framework"
declare -r BACKUP_FILE="${BACKUP_SRC}_$(date +%s).tar.bz2"
declare -r BACKUP_TARGET="/Users/${USER}/backup/code/shell/bash-framework"
declare -r BACKUP_EXCLUDE=("./local ./tmp")
