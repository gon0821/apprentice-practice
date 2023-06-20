#!/bin/bash

add_password()
{
        read -p "Please enter a service name : " service
        read -p "Please enter your user name : " user
        read -p "Please enter your password : " passwd

        # Password storage directory
        directory="${HOME}/saved_passwd"
        if [ ! -d "$directory" ]; then
        mkdir "$directory"
        fi
        echo "${service} : ${user} : ${passwd}" >> "${directory}/managed_file.txt"

        echo "Successfully added password."
}

get_password()
{
        read -p "Please enter a service name : " service

        file="${HOME}/saved_passwd/managed_file.txt"

        if grep -wq  "${service}" $file; then
                echo -n "service name : "
                grep -w "${service}" $file | awk '{print $1}'
                echo -n "user name : "
                grep -w "${service}" $file | awk '{print $3}'
                echo -n "password : "
                grep -w "${service}" $file | awk '{print $5}'
        else
                echo "The service is not registered."
        fi
}

echo "Welcome to Password Manager!"
read -p "Please enter one of the following options (Add Password / Get Password / Exit) :" option

while [ "$option" != Exit  ]
do
        case "$option" in
                 "Add Password" )
                         add_password
                        ;;
                "Get Password" )
                        get_password
                        ;;
                *)
                        echo "Wrong input. (Add Password / Get Password / Exit) Please choose one of these."
                        ;;
        esac

         read -p "Please enter one of the following options (Add Password / Get Password / Exit) :" option

done

echo "Thank you!"
