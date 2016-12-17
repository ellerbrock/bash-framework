#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" >&2 && exit 1

DEP_VARS=("BACKUP_ROOT BACKUP_SRC BACKUP_TARGET")
DEP_APPS=("tar bzip2")

check_deps vars ${DEP_VARS}
check_deps apps ${DEP_APPS}

unset DEP_VARS DEP_APPS

function backup() {
  local exdirs=""
  if [[ -n ${BACKUP_EXCLUDE} ]]; then
    for ex in ${BACKUP_EXCLUDE}; do
      exdirs+=" --exclude=${ex}"
    done
  fi

  cd ${BACKUP_ROOT} && \
  tar ${exdirs} -cjf ${BACKUP_TARGET}/${BACKUP_FILE} ${BACKUP_SRC} && \
  print_ok "Backup finished!"
}
