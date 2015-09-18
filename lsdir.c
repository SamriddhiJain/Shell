#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
/*
To implement the ls command
The path-name to the directory to be listed is to be given as command line input
For listing the directory names with spaces, include the "<directory-name>" 
The directory name should be the arg # 2 on the line after the name of file.
Implement using the shell script 
*/
int main(int argc,char* argv[]){
  DIR *mydir;
  struct dirent *myfile;
  mydir=opendir(argv[2]);
  if(mydir){
  	while((myfile = readdir(mydir))!=NULL){
    	  printf("%s\n",myfile->d_name);
    	}
  	closedir(mydir);
    return 1;
	}else
		printf(" Error in name of directory\n");
}
