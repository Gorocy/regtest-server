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


/usr/bin/bitcoin-cli -regtest -rpcwallet="default" settxfee 0.001

/usr/bin/bitcoin-cli -regtest -rpcwallet="default" sendtoaddress mkD2DEYymzmD2mzBDCCcWosAQU6CJJaEB6 100


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