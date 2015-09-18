filename="$1"
cat Welcome.txt
pwd > dir.txt
# echo $PWD > dir.txt
if [ $filename ]
then
	while read -r line
	do
	set -- $line
	if [ $1 == "cd" ]
	then 
		./chd_dir $line|cut -d ' ' -f2- 
	elif [ $1 == "clr" ]
	then 
		./clr_screen
	elif [ $1 == "dir" ]
	then 
		./list_dirtry $line|cut -d ' ' -f2-
	elif [ $1 == "echo" ]
	then 
		./echo_print $line|cut -d ' ' -f2-
	elif [ $1 == "environ" ]
	then 
		./environ_print $line|cut -d ' ' -f2-
	elif [ $1 == "pause" ]
	then 
		./pause_func
	# elif [ $1 == "echo" ]
	# then 
	# 	./echo_print $line|cut -d ' ' -f2-
	elif [ $1 == "quit" ]
	then 
		echo -e "Thank-You You are now quitting \n" 
		echo "Auf Wiedersehen!!!"
		exit
	elif [[ $1 == "help" && $2 == "clr" ]]
	then
		cat clr.txt
	elif [[ $1 == "help" && $2 == "quit" ]]
	then
		cat quit.txt
	elif [[ $1 == "help" && $2 == "dir" ]]
	then
		cat dir1.txt
	elif [[ $1 == "help" && $2 == "pause" ]]
	then
		cat pause.txt
	elif [[ $1 == "help" && $2 == "echo" ]]
	then
		cat echo1.txt
	elif [[ $1 == "help" && $2 == "cd" ]]
	then
		cat cd1.txt
	elif [[ $1 == "help" && $2 == "environ" ]]
	then
		cat environ.txt
	elif [[ $1 == "help" && $2 == "help" ]]
	then
		cat help1.txt		
	elif [ $1 == "help" ]
	then 
		cat UserManual.txt	
	fi
	done < $filename
fi

while true
do
	cat dir.txt | tr '\n' ' '
	printf "$"
	read line

	set -- $line
	if [[ $1 == "" ]]
	then 
		printf ""
	elif [ $1 == "cd" ]
	then 
		./chd_dir $line|cut -d ' ' -f2- 		
	# elif [[ $1 == "cd" && $2==' ' ]]
	# then 
	# 	cat dir.txt
	# elif [ $1 == "cd" ]
	# then 
	# 	./chd_dir $line|cut -d ' ' -f2- 
	elif [ $1 == "clr" ]
	then  
		./clr_screen
	elif [ $1 == "dir" ]
	then 
		./list_dirtry $line|cut -d ' ' -f2-
	elif [ $1 == "echo" ]
	then 
		./echo_print $line|cut -d ' ' -f2-
	elif [ $1 == "environ" ]
	then 
		./environ_print $line|cut -d ' ' -f2-
	elif [ $1 == "pause" ]
	then 
		./pause_func
	# elif [ $1 == "echo" ]
	# then 
	# 	./echo $line|cut -d ' ' -f2-
	elif [ $1 == "quit" ]
	then
		echo -e "Thank-You You are now quitting \n" 
		echo "Auf Wiedersehen!!!"
		exit
	# elif [ $1 == "help" ]
	# then 
	# 	cat UserManual.txt
	elif [[ $1 == "help" && $2 == "clr" ]]
	then
		cat clr.txt
	elif [[ $1 == "help" && $2 == "quit" ]]
	then
		cat quit.txt
	elif [[ $1 == "help" && $2 == "dir" ]]
	then
		cat dir1.txt
	elif [[ $1 == "help" && $2 == "pause" ]]
	then
		cat pause.txt
	elif [[ $1 == "help" && $2 == "echo" ]]
	then
		cat echo1.txt
	elif [[ $1 == "help" && $2 == "cd" ]]
	then
		cat cd1.txt
	elif [[ $1 == "help" && $2 == "environ" ]]
	then
		cat environ.txt
	elif [[ $1 == "help" && $2 == "help" ]]
	then
		cat help1.txt	
	elif [ $1 == "help" ]
	then 
		cat UserManual.txt	
	else
		echo -e "Enter valid command"
	fi

	#echo -e "\n"
done