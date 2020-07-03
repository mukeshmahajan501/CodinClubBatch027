#!/bin/bash -x

cp `find . atime +7 -type f` ~/TerminalCommands/linux-content/temp/UpFolder
echo "copied"
