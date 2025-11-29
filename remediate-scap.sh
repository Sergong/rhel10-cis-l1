#!/bin/bash
#

if [ -z $1 ]; then
  echo "You eedjit!!"
  exit
fi

postfix=$(date +"%Y-%m-%d-%H-%M")

sudo oscap xccdf eval \
     --profile $1 \
     --remediate \
     --report scap-remediation-report-$postfix.html \
     /usr/share/xml/scap/ssg/content/ssg-rhel10-ds.xml

