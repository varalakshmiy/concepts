#!bin/bash


USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
then
echo "instalation is.... failure"
    exit 1
else
echo "instalation ....  success"
fi
    
}

if[ $USERID -ne 0 ]
then
echo "ERROR: pls run the script with root access"
    exit 1
#else
#echo "instalation of mysql is success"
fi
#our responisbility again check thescript executed or not

yun install mysql -y
 VALIDATE $?


yum install postfix -y
 VALIDATE $?




