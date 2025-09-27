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
    echo "  $2 is already installed"
    exit 1
else
    dnf install $2
    echo " successfully installed $2"
fi
}
dnf list installed java
VALIDATE $? java

dnf list installed telnet 
VALIDATE $? telnet
