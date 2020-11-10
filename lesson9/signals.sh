#!/bin/bash

# run debug
set -x

# https://www.tutorialspoint.com/unix/unix-signals-traps.htm
# detail manual signal: $ man 7 signal
# list signals: $ kill -l
# ex: kill: $ kill -9 pid

<<COMMENT

Signal    Number    Description
SIGHUP    1         Hang up detected on controlling terminal or death of controlling process
SIGINT	  2         Issued if the user sends an interrupt signal (Ctrl + C)
SIGQUIT   3         Issued if the user sends a quit signal (Ctrl + D)
SIGFPE    8         Issued if an illegal mathematical operation is attempted
SIGKILL   9         If a process gets this signal it must quit immediately and will not perform any clean-up operations
SIGALRM   14        Alarm clock signal (used for timers)
SIGTERM   15        Software termination signal (sent by kill by default)

COMMENT

# trap: run echo Send an interrupt signal is detected; exit when detected signal number 2
# trap commands Signals
# trap commands Signal Number

trap "echo Send an interrupt signal is detected; exit" SIGINT

echo "pid is $$"

# stop debug
set +x

count=0
while [ $count -lt 10 ]
do
    echo -e ".\c"
    sleep 2
    (( count++ ))
done
echo ""
