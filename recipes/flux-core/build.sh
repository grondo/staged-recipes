#!/bin/bash
export CPPFLAGS="-D_FORTIFY_SOURCE=2 -O2 -isystem $PREFIX/include"
./configure --prefix=${PREFIX}
make -j 12
make -j 6 check-prep
make -j 6 check
make install
