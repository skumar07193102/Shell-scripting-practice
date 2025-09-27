#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
else
    echo "successfully ran with root previlieges"
    exit 1
fi

dnf install nodejs:20 -y
if [ $? -eq 0 ]; then
    echo " Nodejs Installation is sucessfull"
else
    echo " Installation failed"
fi