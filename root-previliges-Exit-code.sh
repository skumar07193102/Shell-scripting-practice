#1 /bin/bash
user=$(id -u)
if [ $user -ne 0 ]; then
    echo " Command has to run with root previliges"
    exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "installation failed"
    exit 1
else
    echo "installation successfull"
fi