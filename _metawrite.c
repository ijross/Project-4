#include <lib.h>
#include <unistd.h>

PUBLIC int metawrite(){
   message m;

   return(_syscall(VFS_PROC_NR,METAWRITE, &m));
   } 
