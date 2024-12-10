#!/usr/bin/env bash

# DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
# $DIR/run_bitcoind_service.sh

# export RPCCOOKIE=/root/.bitcoin/regtest/.cookie
export KEYDB=/root/regtest-data/KEYS
export INDEXDB=/root/regtest-data/db
# export ZMQ=tcp://127.0.0.1:30001
export RPCCONCURRENT=32
# export RPC=http://localhost:18443
export RPCUSER=polaruser
export RPCPASSWORD=polarpass
# export RPC=http://localhost:18443
export RPC=http://polar-n4-backend1:18443
export PORT=8080

node /root/regtest-server/index.js
