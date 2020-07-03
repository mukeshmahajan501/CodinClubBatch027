#!/bin/bash -x
`cat access.log | awk '{print $20}' | sort | uniq -c |sort -r|head -10`

