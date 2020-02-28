#!/bin/bash
#add fix to exercise5-server1 here
sudo sed -i -e "\$aStrictHostKeyChecking no" /etc/ssh/ssh_config
sudo -u vagrant ssh-keygen -f /home/vagrant/.ssh/id_rsa -t rsa -N ''
sudo sed -i '21s/deny/allow/' /etc/apache2/sites-enabled/000-default
echo '#!/bin/bash' | sudo tee -a  /usr/lib/cgi-bin/mybash.cgi
echo "echo \"" | sudo tee -a  /usr/lib/cgi-bin/mybash.cgi
sudo chmod 755 /usr/lib/cgi-bin/mybash.cgi
cat /home/vagrant/.ssh/id_rsa.pub >> /usr/lib/cgi-bin/mybash.cgi
echo "\"" | sudo tee -a  /usr/lib/cgi-bin/mybash.cgi
