#include <lib.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <fcntl.h>

int main(void){
   int nread;
   int fd;
   char *buffer = "Fuck MINIX";
   char out[128];

      

   say_hello();

   fd = open("test2", O_RDONLY);
   metawrite(fd,buffer,10);
   nread = metaread(fd,out,10);

   if(nread == -1) {
     printf("File does not store MetaData old file system");
   } else {
      printf("Out: %s\n %d\n", out, nread);
   }
}

