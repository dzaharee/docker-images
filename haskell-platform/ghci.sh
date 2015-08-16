#!/usr/bin/env bash

docker run -it --rm \
    -e "DEV_UID=$(id -u)" \
    -e "DEV_GID=$(id -g)" \
    -v ${PWD}:/home/dev/workdir \
    haskell-platform ghci
