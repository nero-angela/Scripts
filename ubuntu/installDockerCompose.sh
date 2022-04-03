# install docker compose
# https://stackoverflow.com/questions/49839028/how-to-upgrade-docker-compose-to-latest-version
VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K.*\d')
\&& DESTINATION=/usr/local/bin/docker-compose
\&& sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
\&& sudo chmod 755 $DESTINATION
\&& docker-compose --version