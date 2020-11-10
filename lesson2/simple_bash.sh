#!/bin/bash

# $0 $1 $* $# $? $@: pass arguments $'./simple_bash.sh 1'
# https://tecadmin.net/tutorial/bash-scripting/bash-command-arguments/
echo "self :$0, number of arguments: $#"

if [ $# -gt 0 ]
then
    args=("$@")
    echo "arguments ${args[0]} ${args[1]} ${args[2]}"
fi

<<COMMENT

-eq: equal
-ne: not equal
-gt: greater than
-ge: greater than or equal
-lt: less than
-le: less than or equal
<  : less than
<= : less than or equal
>  : greater than
>= : greater than or equal

# string comparison
=  : equal
== : equal
!= : not equal
<  : lt
>  : gt
-z : string is null, has zero length

COMMENT

echo -e "\n"    # echo special symbols
echo "Rock, paper, scissors, shoot! Win me if you can!"
echo -e "1_Rock\n2_Paper\n3_Scissors\n"

while true
do
    read -p "Your choice: " choice
    # Check input is a number
    if [[ $choice =~ ^[0-9]+$ ]]
    then
        # Check the choice is between 1-3
        if [ $choice -gt 0 ] && [ $choice -lt 4 ]
        then
            if [ $choice -eq 1 ]
            then
                echo "Your choice is Rock. My choice is Paper. You lose!"
            elif [ $choice -eq 2 ]
            then
                echo "Your choice is Paper. My choice is Scissors. You lose!"
            else
                echo "Your choice is Scissors. My choice is Rock. You lose!"
            fi
        else
            echo "Invalid choice, please select from 1 to 3, OK? Choose again!"
        fi
    else
        echo "Invalid choice, please select a number"
    fi

    echo -e "\nPlay again"
done

# You never win. :)))
echo "End game!"








