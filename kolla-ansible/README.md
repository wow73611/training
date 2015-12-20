
- ssh-keygen -t rsa
- ssh-copy-id root@TARGET_IP
- Edit "group_vars/all.yml" file.
- Run "ansible-playbook -i hosts site.yml" command.

