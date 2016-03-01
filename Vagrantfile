# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.gui = false
  end

  def configure_box (machine)
    machine.vm.box = "nrel/CentOS-6.5-x86_64"
    machine.vm.box_check_update = false
    machine.ssh.insert_key = false
    machine.vm.provision "shell", inline: <<-SHELL
      echo "hello"
    SHELL
  end
  
  config.vm.define "mesos-01" do |es|
    configure_box(es)
    es.vm.network "private_network", ip: "192.168.99.12"
  end

  config.vm.define "mesos-02" do |es|
    configure_box(es)
    es.vm.network "private_network", ip: "192.168.99.13"
  end

  config.vm.define "mesos-03" do |es|
    configure_box(es)
    es.vm.network "private_network", ip: "192.168.99.14"
  end

end
