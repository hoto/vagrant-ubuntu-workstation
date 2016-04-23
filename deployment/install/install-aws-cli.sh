echo "[INFO] Installing AWS CLI..."

VAGRANT_HOME=/home/vagrant
TMP=${VAGRANT_HOME}/tmp
TMP_AWSCLI=${TMP}/aws-cli-bundle
mkdir -p $TMP_AWSCLI

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "${TMP_AWSCLI}/awscli-bundle.zip"
#curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

unzip ${TMP_AWSCLI}/awscli-bundle.zip -d /${TMP_AWSCLI}
sudo ${TMP_AWSCLI}/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# AWS command completion http://docs.aws.amazon.com/cli/latest/userguide/cli-command-completion.html
# echo "complete -C '/usr/local/aws/bin/aws_completer' aws" >> ~/.bashrc
