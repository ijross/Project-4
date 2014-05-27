#include <lib.h>
#include <stdlib.h>
#include <stdio.h>

int main(void){
  message m; 
  _syscall(VFS_PROC_NR, 0,&m);
  }
