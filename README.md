zabbix-gluster
==============
#Zabbix template for monitoring Gluster nodes.

###Monitored items

- Number of offline bricks
- Gluster NFS server
- Selfheal daemon
- Number of offline peers
- Glusterd TCP port


###Installation
(Assumes Centos 6, on other distros may vary)

- Put sudoers.d/zabbix-gluster into /etc/sudoers.d
- Put zabbix_agentd.conf.d/userparameters-gluster.conf into /etc/zabbix_agentd.conf.d
- Import template_app_gluster.xml into Zabbix
- Assign template to relevant hosts
