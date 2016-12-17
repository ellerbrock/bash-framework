#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

# Usage:
#
# err "my error message without title"
# err "my error message with a title" "ERROR TITLE"

function err_title() {
  echo -e "${ERROR_COLOR_TITLE} ${1} ${FONT_RESET}" >&2
}

function err_msg() {
  echo -e "${FONT_ERR} ✘ ${1} ${FONT_RESET}" >&2
}

# error [ message ] [ title ]
function err() {
  case ${#} in
    2)
      err_title "${2}"
      err_msg "${1}"
      ;;
    1)
      err_msg "${1}"
      ;;
    *)
      err_title "${ERROR_MSG_DEFAULT}"
      ;;
  esac
}
