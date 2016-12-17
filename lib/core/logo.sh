#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

function print_logo() {
  clear
  echo -e "\n\n${FONT_ERR} ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤${FONT_RESET}\n"
  echo '    /$$$$$$$                      /$$               /$$ /$$         /$$'
  echo '   | $$__  $$                    | $$              / $$/ $$        | $$'
  echo '   | $$  \ $$  /$$$$$$   /$$$$$$$| $$$$$$$        /$$$$$$$$$$      | $$'
  echo '   | $$$$$$$  |____  $$ /$$_____/| $$__  $$      |   $$  $$_/      | $$'
  echo '   | $$__  $$  /$$$$$$$|  $$$$$$ | $$  \ $$       /$$$$$$$$$$      |__/'
  echo '   | $$  \ $$ /$$__  $$ \____  $$| $$  | $$      |_  $$  $$_/          '
  echo '   | $$$$$$$/|  $$$$$$$ /$$$$$$$/| $$  | $$        | $$| $$         /$$'
  echo '   |_______/  \_______/|_______/ |__/  |__/        |__/|__/        |__/'
  echo -e "\033[31m"
  echo -e "${FONT_ERR} ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤   ❤"
  echo -e "${FONT_RESET}"
  echo -e "\t\t\t${FONT_PINK}Welcome ${FONT_CYAN}to the ${FONT_OK}Bash Framework!${FONT_RESET}\n"
  echo -e "\t\tA Libary to speed up your Shell Scripting Workflow.\n"
}
