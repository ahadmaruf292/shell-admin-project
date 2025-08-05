#!/bin/bash
read -p "Enter username: " username
read -p "Enter default password: " password

useradd -m $username
echo "$username:$password" | chpasswd
echo "User $username added with default password."

