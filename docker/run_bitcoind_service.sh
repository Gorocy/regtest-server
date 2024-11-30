#!/usr/bin/env bash

/usr/bin/bitcoind -server -regtest=1 -txindex -conf=/root/.bitcoin/bitcoin.conf \
-zmqpubhashtx=tcp://127.0.0.1:30001 \
-rpcallowip=0.0.0.0/0 \
-rpcbind=0.0.0.0 \
-zmqpubhashblock=tcp://127.0.0.1:30001 \
-rpcport=18443 \
-rpcworkqueue=32 &
disown
sleep 2
/usr/bin/bitcoin-cli -regtest createwallet default
ADDRESS=$(/usr/bin/bitcoin-cli -regtest getnewaddress "" bech32)
/usr/bin/bitcoin-cli -regtest generatetoaddress 432 $ADDRESS
