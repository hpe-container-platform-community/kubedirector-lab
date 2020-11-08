# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.box = "chris-snow/kubedirector-lab"
  config.vm.box_version = "0.0.3-20200904"

  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder "./kubedirector", "/vagrant/src/github.com/bluek8s/kubedirector", owner: "vagrant", group: "vagrant"

  config.vm.provision "shell", privileged: false, inline: <<-SCRIPT
    sudo chmod 777 /vagrant/
  SCRIPT

end
