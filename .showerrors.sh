echo ""
echo ""
echo "Put the full path and log name you want to show 'errors'"
echo "i.e. /var/log/messages"
echo "Then hit return"
read errors
sudo grep "error" $errors
