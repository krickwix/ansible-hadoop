#!/bin/bash

VARS="${VARS} ANSIBLE_SCP_IF_SSH=y ANSIBLE_HOST_KEY_CHECKING=False"
export ANSIBLE_LIBRARY=$PWD/playbooks/library
export $VARS
ansible-playbook -f 20 -i inventory/static playbooks/bootstrap.yml
