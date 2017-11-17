#/bin/bash
#Syntax: ./power.sh
if [ $# -ne 0 ]
then
	echo "Usage: ./power.sh"
	exit 1
fi
echo " Choose your option
	1.Logout Your account
	2.shutdown system
	3.Reboot system
	4.Logout and Shutdown"
read x
if [ $x -eq 1 ]
then
	echo "Are you sure?!!
	      1.yes
              2.no"
	read y
		if [ $y -eq 1 ]
		then
			kill -9 -1
		else
			echo "Ok!!"
			exit 2
		fi
elif [ $x -eq 2 ]
then
	echo "Are you sure?!!
              1.yes
              2.no"
	read a
		if [ $a -eq 1 ]
		then
			poweroff
		else
			echo "OK!!"
			exit 3
		fi
elif [ $x -eq 3 ]
then
        echo "Are you sure?!!
              1.yes
              2.no"
        read b
                if [ $b -eq 1 ]
                then
			poweroff --reboot
                else
                        echo "OK!!"
                        exit 4
                fi 
elif [ $x -eq 2 ]
then
	echo "Are you sure?!!
              1.yes
              2.no"
        read c
                if [ $c -eq 1 ]
                then
                        kill -9 -1 && poweroff
                else
                        echo "OK!!"
                        exit 5
                fi	
	
exit 6
fi
