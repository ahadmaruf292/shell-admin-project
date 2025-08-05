#!/bin/bash

read -p "Enter username to delete: " username

if id "$username" &>/dev/null; then
    read -p "Do you want to delete the home directory too? (y/n): " choice
    if [[ "$choice" == "y" ]]; then
        sudo userdel -r "$username"
        echo " User $username and home directory deleted."
    else
        sudo userdel "$username"
        echo "User $username deleted (home directory kept)."
    fi
else
    echo "User $username does not exist."
fi

