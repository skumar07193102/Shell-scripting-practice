#! /bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
user=$(id -u)
if [ $user -ne 0 ]; then
    echo -e " plese run with $R root previliges $N"
    exit 1
else
    echo -e "successfully ran with $G root previlieges $N"
fi
VALIDATE(){
if [ $1 -eq 0 ]; then
    echo -e "$2 is $R already installed $N"
else
    dnf install $2 -y
    echo -e " $G successfully installed $2 $N"
fi
}
dnf list installed java
VALIDATE $? java

dnf list installed telnet 
VALIDATE $? telnet