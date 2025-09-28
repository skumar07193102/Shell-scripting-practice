#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
user=$(id -u)
Logfolder=/var/log/shell-script
scriptname=$( echo $0 | cut -d "." -f1)
logfile=$Logfolder/$scriptname.log
mkdir -p $Logfolder
echo "script executed time is $(date)"
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
    exit 1
else
    echo "successfully ran with root previlieges"
fi
VALIDATE(){
if [ $1 -eq 0 ]; then
    echo  -e "$2 installation is $G Success $N"
else
    echo  -e " $2 installtion is $R Failed $N"
fi
}
for packagename in {$1,$2}
do
dnf list installed $packagename &>>$logfile
if [ $? -ne 0 ]; then
    dnf install $packagename -y &>>$logfile
    VALIDATE $? $packagename
else 
    echo -e " $packagename is already installed $Y SKIPPING $N"
fi
done