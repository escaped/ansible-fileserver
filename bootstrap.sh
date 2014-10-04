#!/usr/bin/sh
vagrant up --no-provision
vmid=`VBoxManage list vms | grep fileserver | awk '{ print $2}' | sed 's:^.\(.*\).$:\1:'`
VBoxManage storagectl $vmid --name SATAController --add sata --controller IntelAHCI
tar xfv disks.tar.gz
vagrant up --provision
