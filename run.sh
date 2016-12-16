#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 06.12.2016

set -e

source config.sh

if [ ! $CONFIG_LOADED ]; then
  echo "ERROR: CAN'T LOAD CONFIGURATION"
  exit 1
fi

source lib/core/color.sh
source lib/core/args.sh
source lib/core/error.sh
source lib/core/msg.sh
source lib/core/debug.sh
source lib/core/deps.sh

#
# plugins (uncomment to activate + configuration via config.sh)
#
# source lib/plugins/backup.sh

#
# Examples
#

#
# Status Messages
#

clear
echo -e "${FONT_UNDERLINED}${FONT_BOLD}STATUS MESSAGES${FONT_RESET}:\n"

print_err "error message"
print_warn "warn message"
print_ok "ok message"

#
# Error Messages
#
echo -e "\n\n${FONT_UNDERLINED}${FONT_BOLD}ERROR MESSAGES${FONT_RESET}:\n"

err
echo

err "my error message without title"
echo

err "my error message with a title" "ERROR TITLE"
echo

#
# Check Argument Length
#
function i_need_2_args() {
  check_args_len 2 ${#}
}

i_need_2_args arg1 arg2 # all good
# i_need_2_args arg1    # this would exit with error code 1

#
# Print color codes
#
# print_colors  # uncomment this line to run
