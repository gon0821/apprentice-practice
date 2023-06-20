#!/bin/bash

echo "Welcome to Password Manager!"

read -p "Please enter a service name : " service
read -p "Please enter your user name : " user
read -p "Please enter your password : " passwd

# Password storage directory
directory="${HOME}/saved_passwd"

if [ ! -d "$directory" ]; then
        mkdir "$directory"
fi

echo "${service}:${user}:${passwd}" >> "${directory}/managed_file.txt"

echo "Thank you"
