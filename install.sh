#!/bin/sh

cp proto.h /usr/src/servers/vfs
cp misc.c /usr/src/servers/vfs
cp table.c /usr/src/servers/vfs
cp _sayhello.c /usr/src/lib/libc/posix
cp _metaread.c /usr/src/lib/libc/posix
cp _metawrite.c /usr/src/lib/libc/posix
cp Makefile.inc /usr/src/lib/libc/posix
cp lib.h /usr/src/include
cp callnr.h /usr/src/include/minix
cp read.c /usr/src/servers/vfs
cp write.c /usr/src/servers/mfs
cp request.c /usr/src/servers/vfs
cp mfs/table.c /usr/src/servers/mfs
cp mfs/proto.h /usr/src/servers/mfs
cp mfs/read.c /usr/src/servers/mfs
cp vfsif.h /usr/src/include/minix
cp ext2/table.c /usr/src/servers/ext2
cp hgfs/table.c /usr/src/servers/hgfs

cd /usr/src/tools
make includes

cd /usr/src/servers
make install

cd /usr/src/tools
make install

cd /usr/src/lib/libc
make install


