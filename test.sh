x=`udisksctl mount -b /dev/sda1 | cut -d" " -f4`
cp "${x}/update.key" /tmp/update.key
chmod 600 /tmp/update.key
ssh opc@152.70.140.32 -i /tmp/update.key
