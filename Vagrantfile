# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64" # ubuntu 18.04 LTS

  # vagrant 에서는 머신 생성시 각 다른 기본 키 대신 하나의 키를 사용하도록 설정
  # (~/.vagrant.d/insecure_private_key)
  # config.ssh.insert_key = false 

  # 사용자 및 ssh key 추가
  config.vm.provision "file", source: "~/.ssh/skp@ubuntu.pub", destination: "/home/vagrant/skp@ubuntu.pub"
  config.vm.provision "file", source: "useradd.sh", destination: "/home/vagrant/useradd.sh"
  config.vm.provision "shell", inline: "chmod 755 useradd.sh"
  config.vm.provision "shell", inline: "sudo ./useradd.sh"

  config.vm.define "s01" do |host|
    host.vm.hostname = "s01"
    host.vm.network "public_network", bridge: "en0", ip: "172.30.1.50"
    #host.vm.network "public_network", bridge: "en0", type: "dhcp"
    #host.vm.network "public_network", ip: "192.168.0.50"
    #host.vm.network "private_network", ip: "10.0.1.1"
    host.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.cpus = 2
      vb.memory = "8192"
    end
    host.disksize.size = '32GB'    
  end

end
