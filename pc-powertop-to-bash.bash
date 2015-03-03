#!/bin/bash

# get powertop recommendations
powertop --html=/tmp/powertop.html

# extract commands
xmllint --html -xpath "//div[@id='tuning']//td[2]/text()" <(sed 's/<\/td>/\n<\/td>/g' < /tmp/powertop.html) | sed 's/&gt;/>/g' > /tmp/pc-rc.local

chmod u+x /tmp/pc-rc.local

# apply powertop recommendations
/tmp/pc-rc.local
