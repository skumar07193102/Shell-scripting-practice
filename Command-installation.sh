#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
    exit 1
else
    echo "successfully ran with root previlieges"
fi
dnf install nodejs:20 -y
if [ $? -eq 0 ]; then
    echo " Nodejs Installation is sucessfull"
    exit 1
else
    echo " Installation failed"
fi
dnf install mysqlll -y
if [ $? -eq 0 ]; then
    echo " mysql Installation is sucessfull"
    exit 1
else
    echo " mysql Installation failed"
fi