#!/bin/bash
while inotifywait -e modify /home/pansar/irc/localhost/\&bitlbee/out; do
        tail -1 /home/pansar/irc/localhost/\&bitlbee/out | grep '<oloflolof> pansar:' | sed -n 's/.*pansar: //p' | sed 's/#tb//' > /home/pansar/irc/irc.bsnet.se/\#teambacon/in
done

