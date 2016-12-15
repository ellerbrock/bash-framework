#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 06.12.2016

#
# SHELL SETTINGS
#
CONFIG_LOADED=true
CONFIG_VERSION="0.0.3"
CONFIG_DEBUG=false

#
# FONTS SETTINGS
#
FONT_ERR="\033[1;40;91m"
FONT_WARN="\033[1;40;93m"
FONT_OK="\033[1;40;92m"
FONT_BOLD="\033[1m"
FONT_UNDERLINED="\033[4m"
FONT_DIM="\033[2m"
FONT_INVERT="\033[7m"
FONT_BLINK="\033[5m"
FONT_RESET="\033[0m"

#
# MESSAGE SETTINGS
#
PREFIX_ERR="${FONT_ERR} [ ✘ ] "
PREFIX_WARN="${FONT_WARN} [ ⚡ ] "
PREFIX_OK="${FONT_OK} [ ✓ ] "

PREFIX_HAPPY="${FONT_OK} [ ☺  ]"
PREFIX_SAD="${FONT_ERR} [ ☹  ]"

#
# ERROR SETTINGS
#
ERROR_COLOR_TITLE="\033[1;41;97m"
ERROR_COLOR_MSG="\033[0;40;93m"
ERROR_MSG_DEFAULT="GOD DAMN IT - SOMETHING WENT WRONG"

#
# BACKUP SETTINGS
#
# BACKUP_ROOT="/Users/${USER}/devops"
# BACKUP_SRC="bash-framework"
# BACKUP_FILE="${BACKUP_SRC}_$(date +%s).tar.bz2"
# BACKUP_TARGET="/Users/${USER}/backup/code/shell/bash-framework"
# BACKUP_EXCLUDE=("./local ./tmp")
