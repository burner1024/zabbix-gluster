Zabbix template for monitoring Gluster nodes.
==============
Tested with Gluster 3.5.2

## Monitored items

- Number of offline bricks
- Gluster NFS server
- Selfheal daemon
- Number of offline peers
- Glusterd TCP port
- Total number of unhealed entries
- Number of split-brain entries

## Installation
(Assumes Centos 6, on other distros may vary)

- Copy etc contents to /etc
- Copy opt contents to /opt
- Import template_app_gluster.xml into Zabbix
- Assign the template to the relevant hosts
