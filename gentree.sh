#!/bin/bash
find .. -type f -exec sh -c 'stats=$(stat -c "%.19y\t%.19w\t%.19z" "{}"); echo -e "$stats\t$(cksum "{}" | cut -d " " -f 1 | cut -b1-9)\t$(du -h "{}")"' \; > "database/tree$(date +"%Y-%m-%d %H:%M:%S")"
