# install docker
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
sudo apt update
\&& sudo apt install apt-transport-https ca-certificates curl software-properties-common
\&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
\&& sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
\&& sudo apt install docker-ce
\&& sudo chmod 666 /var/run/docker.sock
# install docker compose
# https://stackoverflow.com/questions/49839028/how-to-upgrade-docker-compose-to-latest-version
\&& VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
\&& DESTINATION=/usr/local/bin/docker-compose
\&& sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
\&& sudo chmod 755 $DESTINATION
\&& docker-compose --version
\&& sudo systemctl status docker