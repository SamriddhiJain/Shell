
ReadMe Text before using the custom terminal.

--The shell works both with the commands given by user one by one and
  also when the input commands are redirected fromt the command line when the terminal is invoked.
--The trivial Functions like cd .. and cd . do not work for the code.
--for listing the directory using the dir command absolute pathname of the directory is required
--similarly for cd absolute path name is required. However, simply invoking cd will display the current directory
--To run the code, do as follows
--TO quit the shell type the quit command 
-->Without Input redirection from File

**-->$- bash final.sh
--This will start the shell and you can use the commands or type help <command> or help for the manual 


--For execution using the inputs from the file i.e. input redirection

**-->$- bash final.sh <command-file-name>


Notes--Before Running in Your Machine
************************************************
When Runnning the shell in your machine just make the following chnages in the cddir.c file
whereever fopen() is used just change the absolute path name of the File being opened as 
the path of the directory where you have put in the codes for execution i.e. the path name there should be
the path where the source codes are located.
and then Compile th ecode as follows:
gcc -o chd_dir cddir.c
and then run the code as mentioned above 
************************************************
