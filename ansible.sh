#!/usr/bin/env bash

ansible all -a "/bin/echo hello" -i ./ansible/ansible_hosts
ansible-playbook ./ansible/mesos_playbook.yml -f 10 -i ./ansible/ansible_hosts
