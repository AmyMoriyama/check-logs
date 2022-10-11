echo ""
echo ""
echo "Put the full path and log name you want to show 'exceptions'"
echo "i.e. /var/log/messages"
echo "Then hit return"
read exceptions
sudo grep "exception" $exceptions
