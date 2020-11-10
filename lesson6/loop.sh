#!/bin/bash


# Super Robot self-destruct
echo "I'm super intellectual robot. And ... I will self-destruct after 5 seconds!"

n=1
#while (( $n <= 5 ))
while [ $n -le 5 ]
do
    echo "$n"
    (( n++ ))
    # gnome-terminal &     # open terminal
    sleep 1              # sleep 1 second
done
echo "Goodbye!"


sleep 2
echo "Hi, I'm comeback and self-destruct faster. ^^"
sleep 1
# until [ $n -eq 10 ]
until (( $n <= 1 ))
do
    (( n-- ))
    echo "$n"
    sleep 0.2              # sleep 200 milliseconds
done
echo "Goodbye again!"



sleep 2
echo "Hello baby, It's me again!"
sleep 1


# for i in {1..5}
# for i in {1..5..1}  # {START..END..INCREASE}
# for i in 1 2 3 4 5
#for (( i=0; i <5; i++ ))

for i in 'G' 'o' 'o' 'd' 'b' 'y' 'e' '!'
do
    echo -e "$i...\c"
    sleep 1
done
echo ""





