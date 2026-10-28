#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
mkdir -p $logs_folder
echo "Script  started executing at $(date +"%F %T")"
if [ $user_id -ne 0 ]; then
    echo "Please run this script with sudo access"
    exit 1
fi

dnf install nginx -y &>>$logs_file
validate $? "Nginx Installation"

dnf install mysql -y &>>$logs_file
validate $? "Mysql Installation"

validate(){
    if [ $? -ne 0 ]; then
        echo "${2} failed" |tee -a $logs_file
    else
        echo "${2} Success" |tee -a $logs_file
    fi
}
echo "Script executiion completed at $(date +"%F %T")"