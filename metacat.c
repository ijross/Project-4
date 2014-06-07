#include <lib.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>

int main(int argc, char **argv){
   int nread;
   int fd;
   char buffer[128];
   char out[128]; 
   struct stat stats;

   fd = open(argv[1], O_RDONLY);
   if(fd < 0){
      printf("Error opening file %s\n", argv[1]);
      return 1;
   }

   /* Check for sticky bit */
   stat(argv[1], &stats);
   if(!((01000) & stats.st_mode)) {
      printf("No sticky Bit No meta file\n");   
      return 0;
   }
     
   nread = metaread(fd,out,128);

   if(nread == -1) {
     printf("File does not store MetaData old file system\n");
   } else {
      printf("%s\n", out);
   }   
   return 0;
}


