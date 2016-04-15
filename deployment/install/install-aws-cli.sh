echo "[INFO] Installing AWS CLI..."

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

# AWS command completion http://docs.aws.amazon.com/cli/latest/userguide/cli-command-completion.html
echo "complete -C '/usr/local/aws/bin/aws_completer' aws" >> ~/.bash_profile
