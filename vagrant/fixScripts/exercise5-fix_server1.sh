#!/bin/bash
#add fix to exercise5-server1 here
sudo sed -i '21s/deny/allow/' /etc/apache2/sites-enabled/000-default
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''
echo '#!/bin/bash' | sudo tee -a  /usr/lib/cgi-bin/mybash.cgi
echo "echo\"" | sudo tee -a  /usr/lib/cgi-bin/mybash.cgi
cat .ssh/id_rsa.pub | sudo tee -a /usr/lib/cgi-bin/mybash.cgi
echo "\"" | sudo tee -a  /usr/lib/cgi-bin/mybash.cgi
sudo chmod 755 /usr/lib/cgi-bin/mybash.cgi
