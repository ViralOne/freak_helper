#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   	echo "You must run this with 'sudo'" 
   	exit 1
else
    apt-get update 
    apt-get install dialog -y

    chmod +x afhelper
    cp ./afhelper /usr/local/bin/

    echo "Installation complete"
    echo "Run afhelper to start"
fi
