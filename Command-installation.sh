#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
    exit 1
else
    echo "successfully ran with root previlieges"
fi

dnf install telnet -y
if [ $? -eq 0 ]; then
    echo " telnet Installation is sucessfull"
else
    echo " Installation failed"
    exit 1
fi
dnf install java -y
if [ $? -eq 0 ]; then
    echo " java Installation is sucessfull"
else
    echo " java Installation failed"
    exit 1
fi
dnf install mongodb-mongosh -y
if [ $? -eq 0 ]; then
    echo " mongoclient Installation is sucessfull"
else
    echo " mongo Installation failed"
    exit 1
fi