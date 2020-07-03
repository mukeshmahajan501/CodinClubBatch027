#!/bin/bash -x
count=$ cat access.log | grep -o systemd |wc -l
echo "noofcount=$count"
