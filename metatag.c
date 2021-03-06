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
   int i;
   struct stat stats;
   
   for(i = 2; i < argc; ++i){
  	   if(i == 0) strcpy(buffer, argv[i]);
	   else strcat(buffer, argv[i]);
  	   strcat(buffer, " "); 
   }

   fd = open(argv[1], O_RDONLY);
   if(fd < 0){
      printf("Error opening file %s\n", argv[1]);
      exit(1);
   }
     
   metawrite(fd,buffer,strlen(buffer));

   /* Set Sticky Bit */
   stat(argv[1], &stats);
   chmod(argv[1], (01000) | stats.st_mode);
   return 0;
}


