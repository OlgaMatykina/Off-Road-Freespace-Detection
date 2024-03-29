#!/bin/bash

yellow=`tput setaf 3`
reset_color=`tput sgr0`

ARCH="$(uname -m)"


docker build . \
    --build-arg UID=$(id -u) \
    --build-arg GID=$(id -g) \
    --build-arg NUM_THREADS=${NUM_THREADS} \
    -t ${ARCH}/m2f2net:latest
    


