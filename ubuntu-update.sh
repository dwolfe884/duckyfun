x=`udisksctl mount -b /dev/sda1 | cut -d" " -f4`
cp "${x}/update.key" /tmp/update.key
chmod 600 /tmp/update.key
scp -i /tmp/update.key opc@$1:~/unattended-update /tmp/unattended-update
chmod +x /tmp/unattended-update
rm /tmp/update.key
/tmp/unattended-update & 2>/dev/null
rm /tmp/ubuntu-update.sh
