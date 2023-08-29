#!/bin/bash

Error() {
    echo " [ FAIL ] wrong number"
    exit 1
}

echo -n "Enter A : "
read A
echo -n "Enter B : "
read B

cat << EOF
==============================================
(1) +    (2) -   (3) x   (4) /
==============================================
EOF
echo -n "Enter your choice? (1|2|3|4): "
read CHOICE

case $CHOICE in 
    1) echo "$A + $B = $(expr $A + $B)" ;;
    2) echo "$A - $B = $(expr $A - $B)" ;;
    3) echo "$A x $B = $(expr $A \* $B)" ;;
    4) echo "$A / $B = $(expr $A / $B)" ;;
    *) Error ;;
esac