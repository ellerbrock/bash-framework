#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft

[[ ! ${CONFIG_LOADED} ]] && echo "ERROR: PLEASE DON'T RUN DIRETLY (CONFIGURATION REQUIRED)" && exit 1

#
# Examples
#

print_logo
press_a_key

status_message_examples
press_a_key

error_message_examples
press_a_key

gui_examples
press_a_key

color_example
echo "... this was the color example :)"
press_a_key

echo "Thats it for now."
echo "Check on GitHub for new releases!"
echo "https://bash-framework.com"
press_a_key
