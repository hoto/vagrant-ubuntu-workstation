echo '[INFO] Installing powerline fonts...'
VAGRANT_HOME=/home/vagrant
TMP=${VAGRANT_HOME}/tmp
POWERLINE_FONTS=${TMP}/powerline-fonts

git clone https://github.com/powerline/fonts ${POWERLINE_FONTS}
sh ${POWERLINE_FONTS}/install.sh
