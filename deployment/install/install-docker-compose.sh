echo "[INFO] Installing Docker Compose..."

# Installind dockre compose
# https://docs.docker.com/compose/install/
sudo curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Installing command completion
https://docs.docker.com/compose/completion/
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose

# Test it installed
docker-compose --version
