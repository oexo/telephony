wget http://repo.zabbix.com/zabbix/2.4/rhel/5/i386/zabbix-agent-2.4.7-1.el5.i386.rpm
wget http://repo.zabbix.com/zabbix/2.4/rhel/5/i386/zabbix-2.4.7-1.el5.i386.rpm
rpm -ihv zabbix-2.4.7-1.el5.i386.rpm
rpm -ihv zabbix-agent-2.4.7-1.el5.i386.rpm
sed -i -e 's/Server=127.0.0.1/Server=oexo.ru/g' /etc/zabbix/zabbix_agentd.conf
chkconfig zabbix-agent on
/etc/init.d/zabbix-agent restart
