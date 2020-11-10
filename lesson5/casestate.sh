#!/bin/bash

# @ all, # number, array[0]
list_vehicle=('car' 'helicopter' 'bicycle' 'train')
list_vehicle[4]='struck'
unset list_vehicle[3]

echo "List vehicle: ${list_vehicle[@]}"
read -p "Your vehicle: " vehicle

# Case statement
case $vehicle in
    "car"|"Car" )
        echo "Normaly boy"
        ;;
    "helicopter"|"Hlicopter" )
        echo "You are rich boy. Do you have any girlfriend?"
        ;;
    "struck"|"Struck" )
        echo "You are racing boy!"
        ;;
    "bicycle"|"Bicycle" )
        echo "Earn money more before love!"
        ;;
    * )
        echo "What the hell are your vehicle???"
        ;;
esac

# Other case statement
<<COMMENT

case choice in
    [a-z] )     # a - z
        ;;
    [0-9] )     # 0 - 9
        ;;
    s[td] )     # st or sd
        ;;
    b? )        # any two-character string starting with "b"
        ;;
    me?(e)t )   # "met" or "meet"
        ;;
    @(a|e|i|o|u))   # matches one vowel
        ;;
    * )         # others
        ;;
COMMENT









