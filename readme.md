# FileServer Configuration

## Requirements

- Vagrant
- VirtualBox
- ansible


## Initialize vm

To initialize (create and provision on first run) the Virtual machine, run:

    ./bootstrap.sh

To access the virtual machine use:

    vagrant ssh

To rerun the ansible configuration, call:

    vagrant provision

## Variables

See `defaults` directories or `host_vars/vagrant`.


## install on remote machine

** run remote install **

    ansible-playbook -i hosts -u {{ssh_user}} --ask-sudo-pass --limit domain.tld playbook.yml
