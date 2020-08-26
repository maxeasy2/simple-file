#!/bin/bash
ID=${1:-$(whoami)}
CWD="$(dirname $0)"
export USER_ID=$(id -u ${ID}):$(id -g ${ID})
export DOCKER_HOME=${CWD}
