#!/bin/sh
export ANSIBLE_CONFIG=$PWD/ansible.cfg
if [ -d "inventories/production" ]; then
    export ANSIBLE_INVENTORY=inventories/production
fi
if [ -f "vault-id.sh" ]; then
    export  ANSIBLE_VAULT_IDENTITY_LIST=vault-id.sh
fi