#include <lib.h>
#include <stdlib.h>
#include <stdio.h>

int main(void){
  message m; 
  printf("hello world \n"); 
  _syscall(VFS_PROC_NR, 0,&m);
  }
