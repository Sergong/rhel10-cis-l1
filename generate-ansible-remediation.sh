#!/bin/bash
#

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "You eedjit!! You need to provide the profile id (run the list script) and the xml output from a previous scan!"
  echo " E.g: ./generate-ansible-remediation.sh <profile id> <scan-results.xml>"
  exit
fi

postfix=$(date +"%Y-%m-%d-%H-%M")

sudo oscap xccdf generate fix \
     --profile $1 \
     --fix-type ansible \
     --output remediation-playbook-$postfix.yml \
     $2
sudo chown smeeuwsen:smeeuwsen remediation-playbook-$postfix.yml

