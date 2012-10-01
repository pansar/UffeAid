#!/bin/bash
echo "<!DOCTYPE html>" > /home/pansar/public_html/uffe/index.html
echo "<html><head><meta charset='utf-8'></head><body><pre>" >> /home/pansar/public_html/uffe/index.html
echo "<p>Now with working links</p>" >> /home/pansar/public_html/uffe/index.html
tail -n50 /home/pansar/loggar/bsnet/#teambacon.log | sed 's/snafu/<b><u>&<\/u><\/b>/' | sed -e 's|http[^ ]*|<a href="&">&</a>|g' >> /home/pansar/public_html/uffe/index.html
echo "</pre></body></html>" >> /home/pansar/public_html/uffe/index.html
