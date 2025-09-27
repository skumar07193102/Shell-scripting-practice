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
    echo "  $2 Installation is sucessfull"
else
    echo " $2 Installation failed"
    exit 1
fi
}
dnf install python -y
VALIDATE $? python
dnf install mysql -y
VALIDATE $? mysql
dnf install mongodb-mongosh -y
VALIDATE $? mongodb-mongosh