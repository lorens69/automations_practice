#!/bin/bash


echo "USER MUST BE ROOT, [y/N]?"
read ans

case $ans in

    "y")
    echo "You are good to go."
    ;;
    "n")
    echo "Byeee"
    exit 1

esac

sleep 3

echo "Hello there! You are about to install MySQL Server in this operating system, what do I call you?"
read name

if [-z ${name}];
    echo "please provide your name and try again."
    exit 1
    
    else
        echo "Hello $name, the installation will start quickly. Please stay put and help me with the installation."
        sleep 2
        echo "Installation initializing..."
        sleep 2
        echo "Installation will begin shortly..."
        sleep 2

        #prerequisites
        suoyum update
        wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
        rpm -Uvh mysql80-community-release-el7-3.noarch.rpm

        sleep 3
        echo "You just finished downloading the prerequisites!"
        sleep 1
        echo "Continuing with the installation..."
        sleep 2

        #install mysql-server
        yum install mysql-server
        systemctl start mysqld
        systemctl status mysqld
        sleep 3

        echo "BELOW IS THE TEMPORARY PASSWORD"
        grep 'password' /var/log/mysqld.log
        sleep 3
        sudo mysql_secure_installation

        echo "ALL DONE! YOU HAVE SUCCESSFULLY INSTALLED MYSQL SERVER IN YOUR SYSTEM. HAVE A GREAT DAY AHEAD!"

        exit 1
        
    fi