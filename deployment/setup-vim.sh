VAGRANT_HOME=/home/vagrant
TMP=${VAGRANT_HOME}/tmp
POWERLINE_FONTS=${TMP}/powerline-fonts

git clone https://github.com/VundleVim/Vundle.vim.git ${VAGRANT_HOME}/.vim/bundle/Vundle.vim
vim +PluginInstall +qall &> /dev/null
