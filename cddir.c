#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/*
For changing the PWD envirnment variable use the command in the shell script
setenv PWD <dir-path>
This change has to be implemented after the code runs and has to be done in the shell script
Read comment below
*/
int main(int argc, char **argv){
	//printf("%d\n",argc);
	int ch=1;
	if(argc > 2){
		ch=chdir(argv[2]);
		if(ch==-1){
			printf(" Error in the Directory-Name\n");
		}else{
			setenv("PWD",argv[2],1);
			printf(" Directory successfully changed\n");
			printf(" Present working Directory: %s\n",(getenv("PWD")));

			FILE * fp;
			fp=fopen("/Users/ayushyadav/Documents/CS 307/week_2/myshell/dir.txt","w");
			if(fp==NULL)
				perror("fopen");
			else
				fprintf(fp,"%s", argv[2]);
			//fclose(fp);
			//fprintf(fp,"%s\n", argv[2]);
		}
	}else{
		FILE *fp2=fopen("/Users/ayushyadav/Documents/CS 307/week_2/myshell/dir.txt","r");
		char ch1;
    	// fscanf(fp2,"%s",ch1);
    	while ((ch1=fgetc(fp2))!= EOF){
    		printf("%c",ch1);	
    		// fscanf(fp2,"%c",&ch1);
    	}
    	printf("\n");
	}
	return 1;
}
