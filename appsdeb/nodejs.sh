#!/bin/sh
#Interromper o script se algum comando falhar.
set -e
read -r -p "Qual Versão do Node JS? [18|20|22] " NODEJS
if [ "$NODEJS" = "18" ] || [ "$NODEJS" = "20" ]; then
    VERSION="$NODEJS"
else
    VERSION="22"
fi
#----------Start----------#
curl -fsSL https://deb.nodesource.com/setup_$VERSION.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt update
apt install -y nodejs
apt install -y npm