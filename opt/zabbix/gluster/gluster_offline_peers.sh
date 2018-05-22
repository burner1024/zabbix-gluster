#!/bin/bash

set +m -o pipefail;

set +m -o pipefail; if item=$(timeout -s 9 1 sudo gluster peer status 2>/dev/null); then echo "$item" | grep -c Disconnected; else echo '-1';

fi
