#!/bin/bash
if [ `cmus-remote -C status | sed -n 1p | grep -o paused` ]; then
    echo "Paused"
else
    cmus-remote -C status | sed -n 2p | grep -o '[^/]*$'
fi
