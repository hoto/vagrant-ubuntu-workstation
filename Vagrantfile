# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider "virtualbox" do |vb|
  #   vb.gui = true
  #  vb.memory = "512"
  # end

  $installSoftware = <<-SHELL
    curl -sL https://deb.nodesource.com/setup_5.x | sudo bash -
    #sudo apt-get update
    sudo apt-get install nodejs -y
    sudo apt-get install build-essential -y
    sudo apt-get install git -y
  SHELL

  $setupHome = <<-SHELL
    VAGRANT_HOME=/home/vagrant
    TMP=${VAGRANT_HOME}/tmp
    TMP_HOME=${TMP}/home
    git clone https://github.com/hoto/home.git ${TMP_HOME}
    rsync -a ${TMP_HOME}/ ${VAGRANT_HOME}/
  SHELL

  $setupVim = <<-SHELL
    VAGRANT_HOME=/home/vagrant
    TMP=${VAGRANT_HOME}/tmp
    POWERLINE_FONTS=${TMP}/powerline-fonts
    git clone https://github.com/VundleVim/Vundle.vim.git ${VAGRANT_HOME}/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

    git clone https://github.com/powerline/fonts ${POWERLINE_FONTS}
    sh ${POWERLINE_FONTS}/install.sh
  SHELL

  $setupFonts = <<-SHELL
    VAGRANT_HOME=/home/vagrant
    TMP=${VAGRANT_HOME}/tmp
    POWERLINE_FONTS=${TMP}/powerline-fonts

    git clone https://github.com/powerline/fonts ${POWERLINE_FONTS}
    sh ${POWERLINE_FONTS}/install.sh
  SHELL

  config.vm.provision "installSoftware", type: "shell", inline: $installSoftware, privileged: true
  config.vm.provision "setupHome", type: "shell", inline: $setupHome, privileged: false
  config.vm.provision "setupVim", type: "shell", inline: $setupVim, privileged: false
  config.vm.provision "setupFonts", type: "shell", inline: $setupFonts, privileged: false
end
