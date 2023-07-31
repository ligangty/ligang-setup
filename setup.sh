#!/bin/bash

sudo dnf install ansible -y

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ANSIBLE_PLAY=$DIR/ansible/install.yml

echo "Setup all env and tools...\n"
ansible-playbook -v $ANSIBLE_PLAY

echo "Install vscode extensions...\n"
$DIR/vscode/restore-code.sh
