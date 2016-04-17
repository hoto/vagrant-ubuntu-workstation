echo "[INFO] Installing AWS Elastic Beanstlak CLI..."

# Installing PIP, there is no other way to install EB CLI
INSTALL_FOLDER='/home/vagrant/tmp/aws-eb-cli'
mkdir -p ${INSTALL_FOLDER}
cd ${INSTALL_FOLDER} && { curl -O https://bootstrap.pypa.io/get-pip.py; cd -; }
sudo python2.7 ${INSTALL_FOLDER}/get-pip.py

sudo pip install awsebcli
