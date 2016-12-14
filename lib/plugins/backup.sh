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
  if [[ ! -d "${BACKUP_ROOT}" ]] || \
     [[ ! -d "${BACKUP_ROOT}/${BACKUP_SRC}" ]] || \
     [[ ! -d ${BACKUP_TARGET} ]]; then
       err "YOUR CURRENT SETTINGS:" "ERROR: DIRECTORY DOES NOT EXIST"
       echo
       echo "BACKUP_ROOT: ${BACKUP_ROOT}"
       echo "BACKUP_DIR: ${BACKUP_ROOT}/${BACKUP_SRC}"
       echo "BACKUP_SRC: ${BACKUP_SRC}"
       echo "BACKUP_TARGET: ${BACKUP_TARGET}"
     exit 1
  else
    exdirs=""
    if [[ ${BACKUP_EXCLUDE} ]]; then
      for ex in ${BACKUP_EXCLUDE}; do
        exdirs+=" --exclude=\"${ex}\""
      done
    fi

    cd ${BACKUP_ROOT}
    tar ${exdirs} -cjf ${BACKUP_TARGET}/${BACKUP_FILE} ${BACKUP_SRC} && \
    print_ok "Backup finished!"
  fi
}
