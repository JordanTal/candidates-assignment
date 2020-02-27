#!/bin/bash
#add fix to exercise5-server2 here
curl http://server1/cgi-bin/mybash.cgi | sudo tee -a .ssh/authorized_keys
