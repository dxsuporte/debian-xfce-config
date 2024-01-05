#!/bin/sh
#Interromper o script se algum comando falhar.
set -e
#APT or NALA
PRG="$1"
#----------Start----------#
add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
wget -q -O - https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -
$PRG update
$PRG install -y code
