#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
    exit 1
else
    echo "successfully ran with root previlieges"
fi
VALIDATE(){
if [ $1 -eq 0 ]; then
    echo "$2 is already installed"
else
    dnf install $2 -y
    echo  "successfully installed $2"
fi
}
dnf list installed mysql-server
VALIDATE $? mysql-server

dnf list installed telnet 
VALIDATE $? telnet
