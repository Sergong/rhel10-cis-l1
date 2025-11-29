#!/bin/bash
# Set boot password using rhel system roles - should prompt for vault password
#
echo "This playbook is NOT idempotent!!"
ansible-playbook -i localhost, -c local --ask-vault-pass change-boot-pw.yml
