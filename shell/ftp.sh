#!/bin/bash

# Function definitions
Help() {
    cat << EOF 
    Commands may be abbreviated.  Commands are:

!		    debug		mdir		sendport	site
$		    dir		    mget		put		    size
account		disconnect	mkdir		pwd		    status
append		exit		mls		    quit		struct
ascii		form		mode		quote		system
EOF
}

LS() {
    echo "LS Function execution."
}

# Code definitions
while trus
do
    echo -n "ftp> "
    read CMD
    case $CMD in
        'help') Help ;;
        'ls') Ls ;;
        'quit') break ;;
        *) echo "?Inavalid command" ;;
    esac
done
