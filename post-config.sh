#!/usr/bin/env bash

function log {
	echo -e "[INFO] $1"
}

function logerr {
	echo -e "[ERRO] $1"
}

log "Start post-config script"

log "Install gtp5g kernel module"
cd /tmp \
    && git clone https://github.com/PrinzOwO/gtp5g.git \
    && cd gtp5g \
    && make clean \
    && make \
    && make install

log "End post-config script"