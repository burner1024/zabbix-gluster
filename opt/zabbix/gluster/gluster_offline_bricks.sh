#!/bin/bash

set +m -o pipefail;

if item=$(timeout -s 9 1 sudo gluster volume status 2>/dev/null | grep Brick | awk '{print $4}'); then echo "$item" | grep -c N; else echo '-1';

fi
