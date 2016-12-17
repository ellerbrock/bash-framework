#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

# DEP_VARS=("BACKUP_ROOT BACKUP_SRC BACKUP_TARGET")
DEP_APPS=("docker")

# check_deps vars ${DEP_VARS}
check_deps apps ${DEP_APPS}

# nothing here yet :(
