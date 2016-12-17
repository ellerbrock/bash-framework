#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 06.12.2016

# set -u  # stop when undeclared variables get consumed
# set -e  # stop when exitcode != 0
# set -x  # trace (useful for debuggging)

source config.sh

if [[ ! $CONFIG_LOADED ]]; then
  echo "ERROR: CAN'T LOAD CONFIGURATION"
  exit 1
fi

source lib/core/color.sh
source lib/core/error.sh
source lib/core/args.sh
source lib/core/debug.sh
source lib/core/deps.sh
source lib/core/msg.sh
source lib/core/io.sh

#
# Plugins
#
# source lib/plugins/backup.sh
# source lib/plugins/gui.sh

#
# Welcome / show examples
#
# source lib/core/examples.sh
# source lib/core/welcome.sh
