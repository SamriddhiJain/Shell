CS 307 System Practicum
ASSIGNMENT 2
Note: Do not use any Wrapper Function
The Shell or Command Line Interpreter is a fundamental User Interface to an Operating
System. In this assignment you have to write a simple shell that has the following properties.
The shell must support the following internal commands:
NOTE : Avoid using direct system calls to implement the commands.
1. cd <directory> Change
the current default directory to <directory> . If the
<directory> argument is not present, report current the current directory. If the directory
doesn’t exist an appropriate error should be reported. This command should change the PWD
environment variable. (1 mark)
2. clr Clear
the screen. ( 1 mark )
3. dir <directory> List
the contents of directory <directory>. ( 1 mark )
4. environ – List all the environment strings. ( 1 mark )
5. echo <comment> Display
<comment> on the display followed by a new line. ( Multiple
spaces/tabs may be reduced to a single space). ( 1 mark )
6. pause – Pause Operation of shell until ‘Enter ’ is pressed. ( 1 mark )
7. helpDisplay
User Manual. ( 1 mark )
8. quit – Quit the shell. ( 1 mark )
9. The shell environment should contain shell=<pathname>/myshell where
<pathname>/myshell is full path for the shell executable (not a hardwired path back to your
directory, but the one from which it was executed). ( 2 mark )
Bonus:
The shell must be able to take its command line input from a file. That is, if the command line is
invoked with a command line argument:
myshell batchfile
then batchfile is assumed to contain a set of command lines for the shell to process. When
the endoffile
is reached, the shell should exit. Obviously, if the shell is invoked without a
command line argument, it solicits input from the user via prompt on the display. (3 marks)
