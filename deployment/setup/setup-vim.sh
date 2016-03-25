echo '[INFO] Cloning vim configs from github...'
VAGRANT_HOME=/home/vagrant

git clone https://github.com/VundleVim/Vundle.vim.git ${VAGRANT_HOME}/.vim/bundle/Vundle.vim
vim +PluginInstall +qall &> /dev/null
