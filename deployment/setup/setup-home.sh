echo '[INFO] Cloning home from github...'
VAGRANT_HOME=/home/vagrant
TMP=${VAGRANT_HOME}/tmp
TMP_HOME=${TMP}/home

git clone https://github.com/hoto/home.git ${TMP_HOME}
rsync -a ${TMP_HOME}/ ${VAGRANT_HOME}/
