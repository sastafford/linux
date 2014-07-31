chkconfig iptables off
iptables -I INPUT -p tcp --dport 8000 -j ACCEPT
iptables -I INPUT -p tcp --dport 8001 -j ACCEPT
iptables -I INPUT -p tcp --dport 8002 -j ACCEPT
service iptables save
service iptables restart
