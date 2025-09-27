#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
    exit 1
else
    echo "successfully ran with root previlieges"
fi

dnf install mysql-server -y
if [ $? -eq 0 ]; then
    echo " Nodejs Installation is sucessfull"
else
    echo " Installation failed"
    exit 1
fi

dnf install  -y
if [ $? -eq 0 ]; then
    echo " mysql Installation is sucessfull"
else
    echo " mysql Installation failed"
    exit 1
fi