#!/bin/bash

set -eu -o pipefail

volumes="$(sudo gluster volume list)"
message=''
check_heal="$1"
threshold="$2"

for volume in $volumes; do
  info="$(sudo gluster volume heal $volume info $check_heal 2>&1)"
  bricks="$(echo "$info" | grep Brick | awk '{print $2}')"
  for brick in $bricks; do
    failed_count="$(echo "$info" | grep -A1 "Brick $brick" | grep 'Number of entries' | awk '{print $NF}'"
    if [[ $failed_count -gt $threshold ]]; then
      message="$message Volume $volume, brick $brick, $check_heal: $failed_count
"
    fi
  done
done

if [[ $message == '' ]]; then
  message='OK'
fi

echo "$message"
