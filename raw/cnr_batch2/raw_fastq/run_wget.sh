#!/bin/bash
echo "Please be advised that the download of archived files can take up to one hour before starting."
J_USER=""
J_PASS=""
read -p "Login: " login
J_USER=$login
read -p "Password: " -s password
J_PASS=$password
echo -n "j_username=$J_USER&j_password=$J_PASS" > .tmp598745661.dat	
chmod "600" .tmp598745661.dat
if [ "$(which wget)" ]
then   
    echo "Downloading with Wget"   
    wget --no-cookies --no-check-certificate -c -i readSetLinks.txt --post-file .tmp598745661.dat
    rm .tmp598745661.dat
else 
    echo "Downloading with Curl"
    xargs -n1 curl -C - -J -L -d "@.tmp598745661.dat" -O < readSetLinks.txt
    rm .tmp598745661.dat
fi