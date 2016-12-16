#!/usr/bin/env bash

# Developer: Maik Ellerbrock <opensource@frapsoft.com>
#
# GitHub:  https://github.com/ellerbrock
# Twitter: https://twitter.com/frapsoft
# Docker:  https://hub.docker.com/frapsoft
#
# Date: 16.12.2016

docker run -it -v ${PWD}:/app/bash-framework:ro frapsoft/bash-framework-dev ./run.sh
