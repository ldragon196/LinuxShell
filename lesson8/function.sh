#!/bin/bash

#------- VARIABLES ----------------------

name="world"

#------- FUNCTION -----------------------

# function hello() {}
hello(){
    local name=$1                 # $1: argument 1
    echo "hello $name"
}

quit(){
    exit
}

usage() {
    echo "You need to provide an argument: "
    echo "usage: $0 filename"
}

is_file_exist(){
    local file="$1"

    # conditions 1 && action 1 : action 1 run if and only if conditions 1 is true
    [[ -f "$file" ]] && return 0 || return 1
}

#----------------------------------------

# hello
hello $name
[[ $# -eq 0 ]] && usage
if ( is_file_exist "$1" )
then
    echo "File found"
else
    echo "File not found"
fi


quit
echo "foo"