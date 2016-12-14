#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 07.12.2016

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

function print_err() {
  if [[ ${1} ]]; then
    echo -e "${PREFIX_ERR}${FONT_RESET} ${1}"
  else
    err "missing parameter"
  fi
}

function print_warn() {
  if [[ ${1} ]]; then
    echo -e "${PREFIX_WARN}${FONT_RESET} ${1}"
  else
    err "missing parameter"
  fi
}

function print_ok() {
  if [[ ${1} ]]; then
    echo -e "${PREFIX_OK}${FONT_RESET} ${1}"
  else
    err "missing parameter"
  fi
}
