#!/bin/bash

cat << EOF 
====================================================
  (1). who      (2). date     (3). pwd              
====================================================
EOF
echo -n "what's your choice? : "
read CHOICE

# echo $CHOICE
case $CHOICE in
    1) who ;;
    2) date ;;
    3) pwd ;;
    *) echo "[ FAIL ] eroor choice."
        exit 1 ;;
esac