# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--monitorcount", "2"]
    vb.memory = "2048"
  end

  config.vm.synced_folder "../../git", "/home/vagrant/git"

  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
  config.vm.provision "file", source: "~/.gittoken", destination: ".gittoken"
  config.vm.provision "file", source: "wallpapers/wallpaper.jpg", destination: "tmp/wallpapers/wallpaper.jpg"
  config.vm.provision "ansible", type: "shell", path: "deployment/install-ansible.sh", privileged: true
  config.vm.provision "software", type: "shell", path: "deployment/install-nodejs.sh", privileged: true
  config.vm.provision "software", type: "shell", path: "deployment/install-software.sh", privileged: true
  config.vm.provision "software", type: "shell", path: "deployment/uninstall-libreoffice.sh", privileged: true
  config.vm.provision "setup", type: "shell", path: "deployment/setup-home.sh", privileged: false
  config.vm.provision "setup", type: "shell", path: "deployment/install-fonts.sh", privileged: false
  config.vm.provision "setup", type: "shell", path: "deployment/setup-vim.sh", privileged: false
  config.vm.provision "wallpaper", type: "shell", path: "deployment/set-wallpaper.sh", privileged: true

  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"
end
