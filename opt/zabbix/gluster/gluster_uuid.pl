#!/bin/bash

set +m -o pipefail;

set +m -o pipefail; if item=$(timeout -s 9 1 sudo gluster peer status 2>/dev/null); then echo "$item" | grep -c Disconnected; else echo '-1';

fi
root@puppet:/etc/puppetlabs/code/environments/production/modules/webtech/files/zabbix/userparams# cat gluster_uuid.pl#!/usr/bin/perl
# Ex.
#       ./gluster_uuid.pl

use strict;

my $glusterd_info = "/var/lib/glusterd/glusterd.info";
my $exec_cmd = "grep UUID $glusterd_info 2> /dev/null";

my $result = `$exec_cmd`;

my $uuid;

if ($result =~ m/UUID=([0-9a-f]+-[0-9a-f]+-[0-9a-f]+-[0-9a-f]+-[0-9a-f]+)/) {
        $uuid = $1;
}

print "$uuid\n";

exit;
