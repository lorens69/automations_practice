#!/bin/bash


echo "USER MUST BE ROOT, [y/N]?"
read ans

case $ans in

    "y|Y")
    echo "You are good to go."
    ;;
    "n|N")
    echo "Byeee"
    exit 1

esac

sleep 3

echo "Hello there! You are about to install MySQL Server in this operating system, what do I call you?"
read name

if [ -z "$name" ]; then
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
        yum update
        wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
        rpm -Uvh mysql80-community-release-el7-3.noarch.rpm
        
    echo "Installing mysql server in a few seconds."
    echo "....."
    echo "...."
    echo "..."
    echo ".."
    echo "."
    
    #install mysql-server
        yum install mysql-server
        sleep 5
        systemctl start mysqld
        sleep 5
        systemctl status mysqld
        sleep 5
    echo "ALL DONE! YOU HAVE SUCCESSFULLY DOWNLOADED MYSQL SERVER IN YOUR SYSTEM!"
    sleep 2
    echo "YOU MAY CONFIGURE YOUR MYSQL SERVER NOW! I WILL PROVIDE YOU WITH A LINK FOR GUIDANCE!"
    sleep 2
    echo "https://www.hostinger.ph/tutorials/how-to-install-mysql-on-centos-7"
    sleep 1
    echo "THANK YOU $name FOR USING THIS EXAMPLE AUTOMATION BY LAURENCE! :D"

    exit 1
        
    fi

