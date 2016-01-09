
## install ansible ##

    apt-get update
    apt-get install ansible
    apt-get install python-pip
    pip install -U pip
    pip install -U ansible
    hash -r

## Using ssh key-pair ##

    ssh-keygen -t rsa
    ssh-copy-id root@TARGET_IP

## Build kolla ##

    - Edit "group_vars/all.yml" file.
    - Run "ansible-playbook -i inventory/hosts-local deploy-kolla.yml" command.

