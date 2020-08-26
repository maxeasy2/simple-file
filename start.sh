#!/bin/bash
CWD="$(dirname $0)"
cd $CWD
ps_cnt=$(docker-compose ps -q | wc -l)

source .env.sh

if [ $ps_cnt -ne 0 ]; then
  ./stop.sh
fi
docker-compose pull
docker-compose up -d
