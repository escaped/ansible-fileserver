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

    # bootstrap install
    ansible-playbook -i hosts -u root  --ask-pass --limit {{hostname}} bootstrap.yml

    # configure system
    ansible-playbook -i hosts -u {{ssh_user}} --ask-sudo-pass --limit {{hostname}} playbook.yml
