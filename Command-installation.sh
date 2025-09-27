#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
else
    echo "successfully ran with root previlieges"
fi

dnf install nodejs -y
if [ $? -eq 0 ]; then
    echo " Nodejs Installation is sucessfull"
else
    echo " Installation failed"
fi