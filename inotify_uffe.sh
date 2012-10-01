#!/bin/bash
while inotifywait -e modify /home/pansar/loggar/bsnet/#teambacon.log; do
	tail -1 /home/pansar/loggar/bsnet/#teambacon.log | grep snafu | awk '{ printf "oloflolof: "; print }' > /home/pansar/irc/localhost/\&bitlbee/in
done
