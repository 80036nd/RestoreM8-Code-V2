#!/bin/bash
 set -e
 clear
 cd ~/Documents/RestoreM8-V2
 echo "RestoreM8 By 80036nd"
 FILE=restore.ipsw
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RestoreM8-V2 folder! Cannot continue."
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
 exit
 fi

 FILE=blob.shsh2
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RestoreM8-V2 folder! Cannot continue."
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
 exit
 fi

 FILE=futurerestore
 if [ -f "$FILE" ]; then
 echo "The $FILE file exists. Continuing..."
 else
 echo "The $FILE file does not exist on the ~/Documents/RestoreM8-V2 folder! Cannot continue. Please re-download the code from the app!"
 exit
 fi
 echo "Now transfering the control to FutureRestore! Please monitor the Terminal!"
 echo "Please wait for FutureRestore to complete."
 echo "*********************************************************"
 printf "\n"
 echo "Welcome to FutureRestore!"
 chmod 777 futurerestore
 ./futurerestore -t blob.shsh2 --latest-sep --latest-baseband restore.ipsw
 clear
 echo "Your Device Should be Restored"
 echo "RestoreM8 By 80036nd"
 echo "Patches by GeoSn0w"
 echo "Terminal Closing in 10 seconds"
sleep 10 
killall Terminal
