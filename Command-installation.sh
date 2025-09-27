#! /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " plese run with root previliges"
else
    echo "successfully ran with root previlieges"
fi