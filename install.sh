#!/bin/sh

cp proto.h /usr/src/servers/vfs
cp misc.c /usr/src/servers/vfs
cp table.c /usr/src/servers/vfs
cp _sayhello.c /usr/src/lib/libc/posix
cp Makefile.inc /usr/src/lib/libc/posix
cp lib.h /usr/src/include
cp callnr.h /usr/src/include/minix

cd /usr/src/servers
make install 

cd /usr/src/tools
make install

