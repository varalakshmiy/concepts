#!/bin/bash

USERID=$(id -u)

if[ $USERID -ne 0 ]

then
    echo "ERROR: pls run the script with root access"
    exit 1
else
    echo " INFO: u r root user"
fi

yun install mysql -y
