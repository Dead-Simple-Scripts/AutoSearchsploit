#!/bin/bash
# Script to automate searchsploit lookups using the Kali workstation
clear
echo ""
echo "********************************"
echo "*       AutoSearchsploit       *"
echo "*                              *"
echo "*          Version 1           *"
echo "*                              *"
echo "*           by Michael Leclair *"
echo "********************************"
echo ""
echo "For use with the Kali workstation

Set-Up:
[*]  Generate a list of applications to check
[*]  List applications in a text file, one application per line
[*]  Run AutoSearchsploit, Example: ./autosearchsploit.sh server1_apps.txt"

echo ""
read -p "Press [Enter] key to start AutoSearchsploit"
echo ""
echo "Checking for exploitDB updates..."

# redirect errors to null
exec 2>/dev/null
#Run script as root for update
#Update Searchsploit - Check for and install any exploitdb package updates (brew, deb & git)
searchsploit -u

echo ""
echo "Runnings apps against exploitDB..."
#make folder on Desktop for results
user=${USER}
mkdir /home/$user/Desktop/ssploit_results
exp=/home/$user/Desktop/ssploit_results

#Reads the app list file line by line and inserts each line element as the searchsploit variable and saves it as a file in the results directory
apps=$1

while IFS= read line
do
	searchsploit -w -s --colour $line >> $exp/"$line.txt"

done < "$apps"

echo ""
echo "AutoSearchsploit completed"
