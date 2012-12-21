#!/bin/bash
while inotifywait -e modify /home/pansar/loggar/bsnet/#teambacon.log; do

#Send message to snafu
tail -1 /home/pansar/loggar/bsnet/#teambacon.log | sed 's/<+snafu>//g' | sed 's/\*\ snafu//g'  | grep -v '< SosseUffe>' | grep -v '<+snafu>' | grep -v '< snafu>' | awk '{ printf "oloflolof: "; print }' > /home/pansar/irc/localhost/\&bitlbee/in

#Update html page
echo "<!DOCTYPE html>" > /home/pansar/public_html/uffe/index.html
echo "<html><head><meta charset='utf-8'><meta http-equiv="refresh" content="6"></head><body><pre>" >> /home/pansar/public_html/uffe/index.html
echo "<p>Now with working links</p>" >> /home/pansar/public_html/uffe/index.html
tail -n50 /home/pansar/loggar/bsnet/#teambacon.log | sed 's/snafu/<blink><b><u>&<\/u><\/b><\/blink>/' | sed -e 's|http[^ ]*|<a href="&">&</a>|g' | tac >> /home/pansar/public_html/uffe/index.html
echo "</pre></body></html>" >> /home/pansar/public_html/uffe/index.html


done
