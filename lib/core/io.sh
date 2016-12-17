#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

# usage: file_exists filename
function file_exists() {
  check_args_len 1 ${#}
  if [[ -e ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" exists"
    fi
  else
    err "File \"${1}\" does not exist!"
    exit 1
  fi
}

# usage: file_not_empty filename
function file_not_empty() {
  check_args_len 1 ${#}
  if [[ -s ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is not empty"
    fi
  else
    err "File \"${1}\" is empty!"
    exit 1
  fi
}

# usage: file_is_readable filename
function file_is_readable() {
  check_args_len 1 ${#}
  if [[ -r ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is readable"
    fi
  else
    err "File \"${1}\" is not readable!"
    exit 1
  fi
}

# usage: file_is_writeable filename
function file_is_writeable() {
  check_args_len 1 ${#}
  if [[ -w ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is writeable"
    fi
  else
    err "File \"${1}\" is not writeable!"
    exit 1
  fi
}

# usage: file_is_executeable filename
function file_is_executeable() {
  check_args_len 1 ${#}
  if [[ -x ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is executeable"
    fi
  else
    err "File \"${1}\" is not executeable!"
    exit 1
  fi
}

# usage: file_is_link filename
function file_is_link() {
  check_args_len 1 ${#}
  if [[ -L ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is a link"
    fi
  else
    err "File \"${1}\" is not a link!"
    exit 1
  fi
}

# usage: file_is_newer file1 file2
function file_is_newer() {
  check_args_len 2 ${#}
  if [[ ${1} -nt ${2} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is newer then \"${2}\""
    fi
  else
    err "File: \"${1}\" is not newer then \"${2}\""
    exit 1
  fi
}

# usage: file_is_older file1 file2
function file_is_older() {
  check_args_len 2 ${#}
  if [[ ${1} -ot ${2} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "File: \"${1}\" is older then \"${2}\""
    fi
  else
    err "File: \"${1}\" is not older then \"${2}\""
    exit 1
  fi
}

# usage: dir_exists dirname
function dir_exists() {
  check_args_len 1 ${#}
  if [[ -d ${1} ]]; then
    if [[ ${CONFIG_DEBUG} == true ]]; then
      print_ok "Directory: \"${1}\" exists"
    fi
  else
    err "Directory \"${1}\" does not exist!"
    exit 1
  fi
}

# usage: get_files callback search
function get_files() {
  check_args_len 2 ${#}

  local list

  for f in ${2}; do
    if [[ -f ${f} ]]; then
      list="${list} ${f}"
    fi
  done

  if [[ ${CONFIG_DEBUG} == true ]]; then
    print_ok "Seach: \"${2}\""
    print_ok "Result: \"${list}\""
  fi

  eval "${1} ${list}"
}


#### TODO ####
#
# - replace text replace
# - file rename
# - search and do something with it
# - crypt
# - pack





#
# IO Examples
#

# file_exists tmp/exist.txt
# file_exists tmp/nosuchfile.txt

# file_not_empty tmp/exist.txt
# file_not_empty tmp/exec.sh

# file_is_readable tmp/exist.txt
# file_is_readable tmp/nosuchfile.txt

# file_is_writeable tmp/exist.txt
# file_is_writeable tmp/nosuchfile.txt

# file_is_executeable tmp/exec.sh
# file_is_executeable tmp/exist.txt

# file_is_link tmp/link
# file_is_link tmp/exist.txt

# file_is_newer tmp/exec.sh tmp/exist.txt
# file_is_newer tmp/exist.txt tmp/exec.sh

# file_is_older tmp/exist.txt tmp/exec.sh
# file_is_older tmp/exec.sh tmp/exist.txt

# dir_exists tmp
# dir_exists tmpxxx

# example callback for
# function file_handle() {
#   # check_args_len 1 ${#}
#   if [[ ${#} -ge 1 ]]; then
#     for f in "${@}"; do
#       # do here the file handling ...
#       # file_is_writeable ${f}
#       if [[ ${CONFIG_DEBUG} == true ]]; then
#         print_ok "found file: \"${f}\""
#       fi
#     done
#   else
#     if [[ ${CONFIG_DEBUG} == true ]]; then
#       print_warn "WARN: no files found for search"
#     fi
#   fi
# }
#
# # get_files "file_handle" "tmp/*"     # return all files from tmp
# get_files "file_handle" "tmp/*"  # return all files from tmp
