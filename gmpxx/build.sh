#!/bin/bash

chmod +x configure

if [ `uname` == Darwin ]; then
    ./configure --prefix=$PREFIX --enable-cxx=yes
else
    ./configure --prefix=$PREFIX --enable-cxx=yes
fi

make
make check
make install
