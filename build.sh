#!/bin/bash
docker build --no-cache -t hackinglab/alpine-openssh-server-hl:3.2.0 -t hackinglab/alpine-openssh-server-hl:3.2 -t hackinglab/alpine-openssh-server-hl:latest -f Dockerfile .

