# -*- mode: ruby -*-
# vi: set ft=ruby :


# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "vagrant"  # so it matches with host_vars


  config.vm.provider :virtualbox do |vbox, override|
    override.vm.box = 'ubuntu/trusty64'
    vbox.name = "fileserver"
    vbox.customize ["modifyvm", :id, "--memory", 2048]

    vbox.customize ['storageattach', :id, '--storagectl', 'SATAController', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', 'disk1.vdi']
    vbox.customize ['storageattach', :id, '--storagectl', 'SATAController', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', 'disk2.vdi']
    vbox.customize ['storageattach', :id, '--storagectl', 'SATAController', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', 'disk3.vdi']
  end

  config.vm.hostname = "Nemo"
  config.vm.network "private_network", ip: "192.168.111.222"
  config.vm.network "public_network"  # for internet access

  config.vm.provision :ansible do |ansible|
    ansible.playbook = 'playbook.yml'
    #ansible.playbook = 'updatekernel.yml'
    ansible.inventory_path = "hosts"
    ansible.host_key_checking = false
    #ansible.verbose = 'vvvv'
  end
end
