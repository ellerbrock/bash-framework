#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft
#
# Date: 15.12.2016

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

#
# Docker Plugin
#
# Todo
#
#


#!/usr/bin/env bash

# Docker Shell Scripts
# ====================
# Version: 	0.1.0
#
# Author: 	Maik Ellerbrock
# GitHub: 	https://github.com/ellerbrock/docker-scripts
# Twitter:  https://twitter.com/frapsoft

# # update all containers
# container_update() {
#   echo updating containers ...
#   docker images | grep -v "REPOSITORY" | awk '{print $1":"$2}' | xargs -L1 docker pull
# }
#
#
# # export containers
# container_export() {
#   echo export containers to containers.txt ...
#   docker images | grep -v "REPOSITORY" | awk '{print $1":"$2}' | xargs -L1 echo docker pull > containers.txt
# }
#
# # remove all unnamed container
# container_del_unnamed() {
#   echo removing unnamed containers ...
#   docker rmi $(docker images | grep "^<none>" | awk '{print $3}') --force
# }
#
# # remove all dangling volumes
# volumes_del_dangling() {
#   echo removing dangling volumes ...
#   docker volume rm $(docker volume ls -f dangling=true | grep -v "DRIVER" | awk '{print $2}')
# }
#
# # remove all containers
# container_del() {
#   echo delete containers ...
#   docker images | grep -v "REPOSITORY" | awk '{print $3}' | xargs -L1 docker rmi -f
# }
#
# # remove all volumes
# volumes_del() {
#   echo delete all volumes ...
#   docker volume ls | grep -v "DRIVER" | awk '{print $2}' | xargs -L1 docker volume rm
# }
#
# echo "Docker Shell Script"
# echo "==================="
# echo "[1] update container"
# echo "[2] export container to ./containers.txt"
# echo "[3] delete unnamed container"
# echo "[4] delete dangling volumes"
# echo "[5] delete all container"
# echo "[6] delete all volumes"
#
# read -p " " -n 1 action
# echo
#
# if [[ $action == 1 ]]; then
#   container_update
# elif [[ $action == 2 ]]; then
#   container_export
# elif [[ $action == 3 ]]; then
#   container_del_unnamed
# elif [[ $action == 4 ]]; then
#   volumes_del_dangling
# elif [[ $action == 5 ]]; then
#   container_del
# elif [[ $action == 6 ]]; then
#   volumes_del
# else
#   echo "wrong parameter"
# fi
