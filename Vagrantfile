# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.ssh.forward_agent = true

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  config.vm.synced_folder "../../git", "/home/vagrant/git"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "2048"
  end

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available.
  config.vm.provision "install-software", type: "shell", path: "deployment/install-software.sh", privileged: true
  config.vm.provision "setup-home", type: "shell", path: "deployment/setup-home.sh", privileged: false
  config.vm.provision "setup-fonts", type: "shell", path: "deployment/install-fonts.sh", privileged: false
  config.vm.provision "setup-vim", type: "shell", path: "deployment/setup-vim.sh", privileged: false
end
