#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 06.12.2016

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

function check_deps() {

  check_args_len 2 ${#}

    if [[ "${1}" != "vars" ]] && [[ "${1}" != "apps" ]]; then
      err "usage: ${0} type deps" "UNKNOWN PARAMETER \"${1}\""
      exit 1
    fi

    for val in "${@:2}"; do
      # variables
      if [[ "${1}" == "vars" ]]; then
        if [[ -z "${!val}" ]]; then
          err "variable \"${val}\" is required but not defined" "MISSING REQUIRED VARIABLE \"${val}\""
          exit 1
        fi

        if [[ ${CONFIG_DEBUG} == true ]]; then
          print_ok "VAR: ${val} is defined"
        fi
        # applications
      else
        if ! (`which "${val}" > /dev/null`); then
          err "application \"${val}\" is required but not installed or not in PATH" "MISSING REQUIRED APPLICATION \"${val}\""
          exit 1
        fi

        if [[ ${CONFIG_DEBUG} == true ]]; then
          print_ok "APP: ${val} found"
        fi
      fi
    done


  unset val
}
