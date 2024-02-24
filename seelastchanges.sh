#!/bin/bash
colordiff database/"$(ls database -1 --sort time | sed -n '1p')" database/"$(ls database -1 --sort time | sed -n '2p')" | grep -P '.*\t.*' | grep -v Tree/database
