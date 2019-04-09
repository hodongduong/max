#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git cmake libuv1-dev libmicrohttpd-dev libssl-dev &&
sudo sysctl vm.nr_hugepages=128 &&
rm -rf xmrig &&
git clone https://github.com/xmrig/xmrig &&
cd xmrig 
mkdir build
cd build
cmake ..
make
./xmrig -B -l pro -R 10 --donate-level 0 --max-cpu-usage 90 -o pool.minexmr.com:7777 -u <WalletID> -p x -k
