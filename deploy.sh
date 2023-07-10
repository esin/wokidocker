#!/bin/bash
dt=$(date +%y%m%d%H%M)
docker build -t es1n/wokidocker:latest -t es1n/wokidocker:$dt -f Dockerfile .
if [ $? -ne 0 ]; then
  exit 1;
fi

docker push es1n/wokidocker:$dt
docker push es1n/wokidocker:latest
