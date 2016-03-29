echo "[INFO] Installing chrome..."

#THIS DOES NOT WOR:
#http://askubuntu.com/questions/79280/how-to-install-chrome-browser-properly-via-command-line
#sudo apt-get install libxss1 libappindicator1 libindicator7 -y
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome*.deb






#http://askubuntu.com/questions/510056/how-to-install-google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
