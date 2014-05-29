#include <lib.h>
#include <unistd.h>

PUBLIC int say_hello(){
   message m;

   return(_syscall(VFS_PROC_NR,SAYHELLO , &m));
   } 
