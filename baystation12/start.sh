#!/bin/bash

cd /data

if [ ! -e baystation12.dme ]; then
    cd /data
    curl -L "https://github.com/Baystation12/Baystation12/archive/${GITREF}.tar.gz" | tar --strip-components=1 -xz
fi

if [ ! -e baystation12.dmb ]; then
    DreamMaker baystation12.dme
fi

if [ ! -e config/config.txt ]; then
    cp config/example/* config/
fi

DreamDaemon baystation12.dmb 8000 -trusted -webclient
