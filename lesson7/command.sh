#!/bin/bash

### execute command
# for command in ls pwd date
# do
#     echo "------------ $command ------------"
#     $command
#     echo ""
# done

### show direct
# for direct in ../*
# do
#     if [ -d $direct ]
#     then
#         echo $direct
#     fi
# done

select command in ls pwd date quit
do
    case $command in
        ls|pwd|date)
            echo "Execute command $command: "
            ;;
        quit)
            echo "Quit"
            break
            ;;
        *)
            echo "Invalid command!"
            continue
            ;;
    esac
    $command
done