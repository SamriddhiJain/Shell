#include <stdio.h>
#include <stdlib.h>
/*
To implement the environment variable
Prints all the environment variables 
Takes no inputs from command line
Just to be invoked when user calls for the environ command on the command line
Use shell script to implement the program.
*/
int main(int argc, char **argv, char** envp){
  char** env;
  for (env = envp; *env != 0; env++){
      char* thisEnv = *env;
      printf("%s\n", thisEnv);    
    }
  return 1;
}