#!/bin/bash

read -p "Your age: " age

# 'AND', 'OR' operator
if [ -z $age ] || [[ $age =~ ^[0-9]+$ ]]     # note: =~, not = ~
then
    #if [ $age -gt 18 ] && [ $age -lt 25 ]
    #if [[ $age -gt 18 && $age -lt 25 ]]
    if [ $age -gt 18 -a $age -lt 25 ]
    then
        echo "you just got puberty!"
        echo "10 years ago, you were $(($age - 10))"
    else
        echo "Hmm..."
    fi
else
    echo "Please input your age is a number"
    exit 1
fi

# Arithmetic, float point
years=10
assets=10.5
echo "10 years later, you will be $(expr $age + $years) years old"
echo -e "Your assets will be about \c"
echo "scale = 5; $age * $assets * 10/ 3" | bc

# bc manual show detail, shell command line
# $man bc