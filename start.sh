#!/bin/bash

# cd "$(dirname "$0")"

# workspace_dir=$PWD

ARCH="$(uname -m)"

xhost +local:
docker run -it -d --rm \
    --gpus all \
    --ipc host \
    --network host \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --privileged \
    --name orfd \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -v /home/matykina_ov/Off-Road-Freespace-Detection:/home/Off-Road-Freespace-Detection:rw \
    -v /media/matykina_ov/Data_21/orfd:/home/workspace:rw \
    ${ARCH}/m2f2net:latest
xhost -






