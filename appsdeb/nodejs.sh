#!/bin/sh
#Interromper o script se algum comando falhar.
set -e
#APT or NALA
if [ "$(dpkg -l nala 2>&- | grep -c ^ii)" = 1 ]; then
    PRG="nala"
else
    PRG="apt"
fi
read -r -p "Qual Versão do Node JS? [16|18|20] " NODEJS
if [ "$NODEJS" = "16" ] || [ "$NODEJS" = "18" ]; then
    VERSION="$NODEJS"
else
    VERSION="20"
fi
#----------Start----------#
wget -qO - https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$VERSION.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
$PRG update
$PRG install -y nodejs