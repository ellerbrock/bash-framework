#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
#
# Date: 06.12.2016

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

DEP_VARS=("BACKUP_ROOT BACKUP_SRC BACKUP_TARGET")
DEP_APPS=("tar bzip2")

check_deps vars ${DEP_VARS}
check_deps apps ${DEP_APPS}

function backup() {
  exdirs=""
  if [[ -n ${BACKUP_EXCLUDE} ]]; then
    for ex in ${BACKUP_EXCLUDE}; do
      exdirs+=" --exclude=${ex}"
    done
  fi

  cd ${BACKUP_ROOT} && \
  tar ${exdirs} -cjf ${BACKUP_TARGET}/${BACKUP_FILE} ${BACKUP_SRC} && \
  echo tar -cjf ${BACKUP_TARGET}/${BACKUP_FILE} ${BACKUP_SRC} ${exdirs}
  print_ok "Backup finished!"
}
