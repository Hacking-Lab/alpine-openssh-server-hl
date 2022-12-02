#!/bin/bash
docker build --no-cache -t hackinglab/alpine-openssh-server-hl:$1.0 -t hackinglab/alpine-openssh-server-hl:$1 -t hackinglab/alpine-openssh-server-hl:latest -f Dockerfile .

docker push hackinglab/alpine-openssh-server-hl
docker push hackinglab/alpine-openssh-server-hl:$1
docker push hackinglab/alpine-openssh-server-hl:$1.0
