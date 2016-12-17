#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

DEP_VARS=("GUI_MSGBOX_HEIGHT GUI_MSGBOX_WIDTH")
DEP_APPS=("dialog")

check_deps vars ${DEP_VARS}
check_deps apps ${DEP_APPS}

# usage: gui_msgbox message [title] [height] [width]
function gui_msgbox() {
  check_args_len 1 ${#}

  local t=""
  local h=${GUI_MSGBOX_HEIGHT}
  local w=${GUI_MSGBOX_WIDTH}

  [[ -n ${2} ]] && t="${2}"
  [[ -n ${3} ]] && h="${3}"
  [[ -n ${4} ]] && w="${4}"

  dialog --title "${t}" --msgbox "${1}" "${h}" "${w}"
}


# usage: gui_yesno callback message [title] [height] [width]
function gui_yesno() {
  check_args_len 2 ${#}

  local h=${GUI_MSGBOX_HEIGHT}
  local w=${GUI_MSGBOX_WIDTH}

  [[ -n ${3} ]] && h="${3}"
  [[ -n ${4} ]] && w="${4}"

  dialog --yesno "${2}" "${h}" "${w}"
  eval "${1} ${?}"
}

#
# from here under development ... (coming in the next release)
#

# # usage: gui_input message [title] [height] [width]
# function gui_input() {
#
#   check_args_len 1 ${#}
#
#   local t=""
#   local h=${GUI_MSGBOX_HEIGHT}
#   local w=${GUI_MSGBOX_WIDTH}
#
#   [[ -n ${2} ]] && t="${2}"
#   [[ -n ${3} ]] && h="${3}"
#   [[ -n ${4} ]] && w="${4}"
#
#   local res=$(dialog --title ${t} --inputbox "${1}" "${h}" "${w}" 3>&1 1>&2 2>&3 3>&-)
#   echo "res:${res}"
# }
#
# # usage: gui_input message [title] [height] [width]
# function gui_menue() {
#   # check_args_len 1 ${#}
#   #
#   # local t=""
#   # local h=${GUI_MSGBOX_HEIGHT}
#   # local w=${GUI_MSGBOX_WIDTH}
#   #
#   # [[ -n ${2} ]] && t="${2}"
#   # [[ -n ${3} ]] && h="${3}"
#   # [[ -n ${4} ]] && w="${4}"
#   #
#   # local res=$(dialog --title ${t} --inputbox "${1}" "${h}" "${w}" 3>&1 1>&2 2>&3 3>&-)
#   # echo "res:${res}"
#
#   local res=$(dialog --title "Please select the image" --menu "my menue" 10 45 3 sel1 "selection1" sel2 "selection2" sel3 "selection3"  3>&1 1>&2 2>&3 3>&-)
#   echo "res:${res}"
#
#   case ${res} in
#     sel1) echo "selection1";;
#     sel2) echo "selection2";;
#     sel3) echo "selection3";;
#   esac
# }
