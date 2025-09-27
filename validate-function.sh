#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
    exit 1
else
    echo -e "\e[33m successfully ran with root previlieges"
fi
VALIDATE(){
    if [ $1 -eq 0 ]; then
    echo -e "\e[32m $2 is already installed"
    exit 1
else
    dnf install $2 -y
    echo -e "\e[34m successfully installed $2"
fi
}
dnf list installed mysql-server
VALIDATE $? mysql-server

dnf list installed telnet 
VALIDATE $? telnet
