#!/bin/bash
find .. -type f -exec sh -c 'stats=$(stat -c "%.19y\t%.19w\t%.19z\t%s" "{}"); echo -e "$stats\t$(cksum "{}" | cut -d " " -f 1)\t{}"' \; > "database2/tree2$(date +"%Y-%m-%d_%H:%M:%S").csv"
