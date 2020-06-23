#!/bin/bash
# Backup files

mkdir newbckupFol
oldFiles=`find -atime +7 -type f`
cp $oldfiles "C:\Users\Komal\TerminalCommands\linux-content\newbckupFol"
echo $oldFiles "copied"
