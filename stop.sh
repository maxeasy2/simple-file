#!/bin/bash
CWD="$(dirname $0)"
cd $CWD

source .env.sh

docker-compose down
