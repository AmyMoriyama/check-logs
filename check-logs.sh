#!/bin/bash
###########################################
## Deps: grep
##
## Be sure to check the license file.
##
## Script to check logs
###########################################

# Check for exceptions
echo "-------------------------------------------"
echo "==========================================="
echo 'Below are logs containing "exceptions" (and the number of)'
sudo find /var/log -name '*' -mtime -2 -exec grep -s -Hc exception {} \; | grep -v -s :0$
echo "==========================================="
echo "-------------------------------------------"
echo "==========================================="
echo 'Below are logs containing "errors" (and the number of)'
sudo find /var/log -name '*' -mtime -2 -exec grep -s -Hc error {} \; | grep -v -s :0$
echo "==========================================="
echo "-------------------------------------------"

while true; do
    read -p "Do you want to see more? Y for errors N for exceptions ctrl+c to exit" yn
    case $yn in
        [Yy]* ) ./.showerrors.sh;;
        [Nn]* ) ./.showexceptions.sh;;
        * ) echo "Please answer yes or no. Hit ctrl+c to exit";;
    esac
done

