#!/bin/bash -x
for file in `*./var/log`
do
 grep -c 'systemd'
done
