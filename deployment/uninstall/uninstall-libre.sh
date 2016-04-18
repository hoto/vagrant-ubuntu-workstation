echo '[INFO] Uninstalling libreoffice...'
#sudo apt-get remove --purge libreoffice* -y
sudo apt-get remove --purge libreoffice-core -y
sudo apt-get clean -y
sudo apt-get autoremove -y
