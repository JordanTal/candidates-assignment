#!/bin/bash
#add fix to exercise5-server1 here
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
sudo apt-get install sshpass
sshpass -p "vagrant" ssh-copy-id -i ~/.ssh/id_rsa.pub vagrant@server2
sudo sed -i -e "\$aStrictHostKeyChecking no" /etc/ssh/ssh_config
