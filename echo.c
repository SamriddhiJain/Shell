#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
/*
To implement echo command
This will take arguments from command line and print that with removing multiple spaces
The argument have to be given after the ./echo1 <comment>
Implement a workable use using script
*/
int main(int argc, char **argv) {
	int c=1;
    while(c<argc){
    	printf("%s ", argv[c]);
    	c++;
    }
    printf("\n");
    return 1;
}