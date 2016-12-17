#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft
#
# Date: 17.12.2016

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

#
# Status Messages
#
function status_message_examples() {
  clear
  echo -e "${FONT_UNDERLINED}${FONT_BOLD}STATUS MESSAGES${FONT_RESET}:\n"

  print_err "error message"
  print_warn "warn message"
  print_ok "ok message"
  #
  # Check Argument Length
  #
  function i_need_2_args() {
    check_args_len 2 ${#}
  }

  i_need_2_args arg1 arg2 # all good
  # i_need_2_args arg1      # this would exit with error code 1
}


#
# Error Messages
#
function error_message_examples() {
  echo -e "${FONT_UNDERLINED}${FONT_BOLD}ERROR MESSAGES${FONT_RESET}:\n"
  err
  echo
  err "my error message without title"
  echo
  err "my error message with a title" "ERROR TITLE"
  echo
}


#
# GUI Examples
#
function gui_examples()
{
  # Message Boxes
  gui_msgbox "I am a Message Box with default size"
  gui_msgbox "Cool i got an Title" "Awesome Title"
  gui_msgbox "Box with custom size settings" "My Title" 10 30
  gui_msgbox "Auto-size is possible as well" "My Title" 0 0


  # yes / no Dialog
  function callback() {
    check_args_len 1 ${#}

    case ${1} in
      0)   gui_msgbox "yes of course you do!" "RESULT: YES";;
      1)   gui_msgbox "what the hell? sudo rm -rf / you!" "RESULT: NO";;
      255) gui_msgbox "you canceled with ESC" "RESULT: ESC";;
    esac
  }
  gui_yesno "callback" "Do you like the Bash Framework?"
}


#
# Print Color Examples
#
function color_example() {
  print_colors nice
}
