#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
 /*
The function is used to pause the shell work until the user presses <Enter>
The code should be called when use enters the command <pause>
The code will stop when user wants to resume control and presses <Enter>
 */
 int main(){
 	printf("Start of Execution\n");
 	char ch;
 	while(ch!='\n'){
 		ch=getchar();
 	}
 	return 1;
 }