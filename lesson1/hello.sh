#!/bin/bash

# Question somethings
read -p "Your's name: " name
read -p "Your's age: " age
# Hack password ^^
read -sp "Can you tell me your password? I can't see it, OK: " password
echo

echo "Hello $name, $age years old! You are beautiful!"
echo "LOL, your pass is $password"



<<COMMENT
# This is comment for multiple lines
# End file
COMMENT