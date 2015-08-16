#!/bin/bash

DEV_USER=dev
DEV_GROUP=dev
DEV_ORIGINAL_GID=913379
CMD=${*:-/bin/bash}

if [ -n "${DEV_UID}" ]; then
    usermod --uid ${DEV_UID} ${DEV_USER} > /dev/null 2>&1
fi

if [ -n "${DEV_GID}" ]; then
    groupmod --gid ${DEV_GID} ${DEV_GROUP} > /dev/null 2>&1
    find / -gid ${DEV_ORIGINAL_GID} -exec chgrp -h ${DEV_GID} {} \; > /dev/null 2>&1
fi

exec sudo -u ${DEV_USER} ${CMD}
