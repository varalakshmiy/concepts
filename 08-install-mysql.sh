#!/bin/bash

USERID=$(id -u)

if[ $USERID -ne 0 ]
then
echo "ERROR: pls run the script with root access"
    exit 1
#else
#echo "instalation of mysql is success"
fi
#our responisbility again check thescript executed or not
yun install mysql -y

if[ $? -ne 0 ]
then
echo "install of mysql is error"
    exit 1
else
echo "instalation of mysql is success"
fi

yum install postfix -y

if[ $? -ne 0 ]
then
echo "install of postfix is error"
    exit 1
else
echo "instalation of postfix is success"
fi

