#!/bin/bash
sudo chmod +x autogen.sh
sudo ./autogen.sh

sudo chmod +x configure
sudo ./configure --with-crypto --with-curl CFLAGS="-O2 $extracflags -DUSE_ASM -pg"

sudo make -j 4

sudo strip -s cpuminer
