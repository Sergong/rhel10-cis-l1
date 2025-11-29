#!/bin/bash
#

if [ -z $1 ]; then
  echo "You eedjit!!"
  exit
fi

postfix=$(date +"%Y-%m-%d-%H-%M")

sudo oscap xccdf eval \
     --profile $1 \
     --report scap-report-$postfix.html \
     --results scap-results-$postfix.xml \
     /usr/share/xml/scap/ssg/content/ssg-rhel10-ds.xml

sudo chown smeeuwsen:smeeuwsen scap-report-$postfix.html scap-results-$postfix.xml

