#!/bin/bash

# get powertop recommendations
powertop --html=/tmp/powertop.html

# extract commands
xmllint --html --xpath "//tr[@class='tune']//text()" <(sed 's/<\/\(t[dh]\)>/\n<\/\1>/g' < /tmp/powertop.html) | head -n -2 | tail -n +3 | sed 's/&gt;/>/g;s/^   /# /;s/^  //;s/ $//;s/;$/\n/' > /tmp/pc-rc.local

chmod u+x /tmp/pc-rc.local

# apply powertop recommendations
/tmp/pc-rc.local
