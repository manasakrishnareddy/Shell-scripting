#!/bin/bash
user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access"
    exit 1
fi
validate(){
    if [ $? -ne 0 ]; then
        echo "${2} failed"
    else
        echo "${2} Success"
    fi
}
dnf install nginx -y
validate $? "Nginx Installation"

dnf install mysql -y
validate $? "Mysql Installation"