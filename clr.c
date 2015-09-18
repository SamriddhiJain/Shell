#include <stdio.h>
#include <unistd.h>
/*
Function to clear screen
Should be invoked when the command of 'clr' is recieved from the user at the prompt
Implement using shell script when clr command is recieved from the user
*/
int main(){
	printf("\e[1;1H\e[2J");//escape sequence for clearing the prompt and move cursor to top
		return 1;
}