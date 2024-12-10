#!/usr/bin/env bash

# /usr/bin/bitcoind -server -regtest=1 -txindex -conf=/root/.bitcoin/bitcoin.conf \
# -zmqpubhashtx=tcp://127.0.0.1:30001 \
# -rpcallowip=0.0.0.0/0 \
# -rpcbind=0.0.0.0 \
# -zmqpubhashblock=tcp://127.0.0.1:30001 \
# -rpcport=18443 \
# -rpcworkqueue=32 &
# disown
# sleep 2
# /usr/bin/bitcoin-cli -regtest createwallet default
# ADDRESS=$(/usr/bin/bitcoin-cli -regtest getnewaddress "" bech32)
# /usr/bin/bitcoin-cli -regtest generatetoaddress 432 $ADDRESS


# /usr/bin/bitcoin-cli -regtest -rpcwallet="default" settxfee 0.001

# /usr/bin/bitcoin-cli -regtest -rpcwallet="default" sendtoaddress mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6 100

# bcrt1qux5nx7ppwwtan60ajs6pqzn7k8xz9s9kdxqtsu
# /usr/bin/bitcoin-cli -regtest generatetoaddress 101 $ADDRESS
# /usr/bin/bitcoin-cli -regtest generatetoaddress 101 mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6
# bcrt1qe6dsgvagfjjdy86j2paz3wr4qfkkcneyk39k3k
# /usr/bin/bitcoin-cli -regtest -rpcwallet="default" settxfee 0.001
# /usr/bin/bitcoin-cli -regtest -rpcwallet="default" sendtoaddress mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6 100
# /usr/bin/bitcoin-cli -regtest importaddress "mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6" "" false
# /usr/bin/bitcoin-cli -regtest listunspent 0 9999999 "[\"mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6\"]"
# /usr/bin/bitcoin-cli -regtest scantxoutset start '[{"desc":"addr(mu9FseVwXgMVJyU2tok15P6McueTCrsEEH)"}]'
# /usr/bin/bitcoin-cli -regtest scantxoutset start '[{"desc":"addr(mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6)"}]'
# bcrt1qgugvretkmrvhhjk2hngx7ctskdyj4qppq44nap

BITCOIN_RPC_USER="polaruser"       
BITCOIN_RPC_PASSWORD="polarpass"    
BITCOIN_RPC_HOST="127.0.0.1"      
BITCOIN_RPC_PORT="18443"           

bitcoin-cli -rpcuser=$BITCOIN_RPC_USER -rpcpassword=$BITCOIN_RPC_PASSWORD \
  -rpcport=$BITCOIN_RPC_PORT createwallet default

ADDRESS=$(bitcoin-cli -rpcuser=$BITCOIN_RPC_USER -rpcpassword=$BITCOIN_RPC_PASSWORD \
  -rpcport=$BITCOIN_RPC_PORT getnewaddress "" bech32)

bitcoin-cli -rpcuser=$BITCOIN_RPC_USER -rpcpassword=$BITCOIN_RPC_PASSWORD \
  -rpcport=$BITCOIN_RPC_PORT generatetoaddress 432 $ADDRESS

bitcoin-cli -rpcuser=$BITCOIN_RPC_USER -rpcpassword=$BITCOIN_RPC_PASSWORD \
  -rpcport=$BITCOIN_RPC_PORT -rpcwallet="default" settxfee 0.001

# bitcoin-cli -rpcuser=polaruser -rpcpassword=polarpass -rpcport=18443 createwallet default

# docker run --rm -it \                                                                                                                                                                           ✔ 
#   --network host \
#   ruimarinho/bitcoin-core \
#   bitcoin-cli -rpcuser=polaruser -rpcpassword=polarpass -rpcport=18443 -regtest getblockchaininfo
