#!/bin/bash
#add fix to exercise6-fix here

sudo apt-get install sshpass
last = ${@:$#}
FILES_TOTAL_SIZE=0
host=$(hostname)

if ["$os" = "server1" ] ; then
    dest="server2"
else
    dest="server1"
fi

for FILE in "${@:1:$#-1}"; do
	sshpass -p "vagrant" scp $FILE vagrant@"$dest":"$last"
	FILES_TOTAL_SIZE+=$(stat -c%s "$FILE")
done


