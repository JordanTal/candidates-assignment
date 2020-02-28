#!/bin/bash
#add fix to exercise6-fix here
sudo apt-get install sshpass
destFolder=${@:$#}
FILES_TOTAL_SIZE=0
fileSize=0
host=$(hostname)
touch /home/vagrant$DESTI_FOLDER
if [ "$host" = "server1" ] ; then
remoteHost='server2'
else
remoteHost='server1'
fi
for FILE in "${@:1:$#-1}"; do
	sshpass -p "vagrant" scp $FILE vagrant@"$remoteHost":"$destFolder"
	fileSize=$(stat -c %s "$FILE")
	FILES_TOTAL_SIZE=$((FILES_TOTAL_SIZE + fileSize))
done
echo "$FILES_TOTAL_SIZE"
