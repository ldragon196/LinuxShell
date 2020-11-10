#!/bin/bash

<<COMMENT

https://www.tutorialspoint.com/unix/unix-file-operators.htm

-b file: Checks if file is a block special file
-c file: Checks if file is a character special file
-d file: Checks if file is a directory
-f file: Checks if file is an ordinary file as opposed to a directory or special file
...
-r file: Checks if file is readable
-w file: Checks if file is writable
-x file: Checks if file is executable
-s file: Checks if file has size greater than 0
-e file: Checks if file exists

COMMENT

# \c input pointer inline with echo_string
echo -e "Enter the name of file: \c"
read filename

# note: [ condition ] has space white
# open file

if [ -f $filename ]
then
    # read file
    if [ -r $filename ]
    then
        # read lines
        n=1
        while read line || [ -n "$line" ]  #-n length of string is non-zero
        do
            echo "Line no. $n: $line"
            n=$((n+1))
        done < $filename

        # read original file
        cat $filename
    else
        echo "The file do not have read permissions"
    fi

    # write file
    if [ -w $filename ]
    then
        # ctrl+d to quit 'cat'
        echo -e "\nType some text data. To quit press ctrl+d: "
        cat >> $filename
    else
        echo "The file do not have write permissions"
    fi
else
    echo "File is not found"
fi