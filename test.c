#include <lib.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>


int main(void){
   int nread;
   char buffer[128];

      

   say_hello();
   nread = metawrite(0,buffer,128); 
   nread = metaread(0,buffer,128);
  }
