#!/bin/bash

if [[ $# != 1 ]]; then
    echo "Usage: $(basename $0) <target ip>"
    exit 1
fi

check_ip=$1

((err_cnt=0))

while true; do
    if ! ping -q -c 1 -W 5 $check_ip >/dev/null; then
        if ((++err_cnt > 3)); then
            echo "restating strongswan"
            systemctl restart strongswan
        fi
    else
        ((err_cnt=0))
    fi

    sleep 60
done

