#! /bin/bash
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
    echo "$2 is already installed"
else
    dnf install $2 -y
    echo  "successfully installed $2"
fi
}
dnf list installed $1 &>>$logfile
VALIDATE $? mysql-server

dnf list installed telnet &>>$logfile
VALIDATE $? telnet
