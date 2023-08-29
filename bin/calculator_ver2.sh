#!/bin/bash

Error() {
    echo " [ FAIL ] wrong number"
    exit 1
}

echo -n "Enter A : "
read A
echo -n "Enter OP : "
read OP
echo -n "Enter B : "
read B

case $OP in
    '+') echo "$A + $B = $(expr $A + $B)" ;;
    '-') echo "$A - $B = $(expr $A - $B)" ;;
    '*') echo "$A x $B = $(expr $A \* $B)" ;;
    '/') echo "$A / $SB = $(expr $A / $B)" ;;
    *  ) Error        ;;
esac