#!/bin/bash
#add fix to exercise5-server2 here
curl http://192.168.100.10/cgi-bin/mybash.cgi | sudo tee -a .ssh/authorized_keys
