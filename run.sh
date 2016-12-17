#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft

# set -u  # stop when undeclared variables get consumed
# set -e  # stop when exitcode != 0
# set -x  # trace (useful for debuggging)

SRC_DIR=$(dirname "${0}")
SRC_FILE=$(basename "${0}")

source ${SRC_DIR}/config.sh

if [[ ! $CONFIG_LOADED ]]; then
  echo "ERROR: CAN'T LOAD CONFIGURATION"
  exit 1
fi

source ${SRC_DIR}/lib/core/color.sh
source ${SRC_DIR}/lib/core/error.sh
source ${SRC_DIR}/lib/core/args.sh
source ${SRC_DIR}/lib/core/debug.sh
source ${SRC_DIR}/lib/core/deps.sh
source ${SRC_DIR}/lib/core/msg.sh
source ${SRC_DIR}/lib/core/io.sh

#
# Plugins
#
# source ${SRC_DIR}/lib/plugins/backup.sh
source ${SRC_DIR}/lib/plugins/gui.sh

#
# Welcome / show examples
#
source lib/core/examples.sh
source lib/core/logo.sh
source lib/core/welcome.sh
