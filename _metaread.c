#include <lib.h>
#include <unistd.h>

PUBLIC int metaread(){
   message m;

   return(_syscall(VFS_PROC_NR,METAREAD , &m));
   } 
