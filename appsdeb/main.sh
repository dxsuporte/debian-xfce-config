#!/bin/sh
#Interromper o script se algum comando falhar.
set -e
#----------Start----------#
#Atualizar sistema
apt update && apt upgrade -y
apt install -y apt-transport-https wget curl gpg
######################################################################
read -r -p "Instalar o Synaptic? - Gerenciador de Pacotes! [y|n] " SYNAPTIC
read -r -p "Instalar o GParted? - Gerenciador de Partições! [y|n] " GPARTED
read -r -p "Instalar o Gnome Disk? - Gerenciador de discos! [y|n] " GNOMEDISK
read -r -p "Instalar o Gufw? - Gerenciador de Firewall? [y|n] " GUFW
read -r -p "Instalar o Blueman? Gerenciador de Bluetooth! [y|n] " BLUEMAN
read -r -p "Instalar o Cups? - Gerenciador de Impressoras! [y|n] " CUPS
read -r -p "Instalar o Cheese? Gerenciador de WebCam! [y|n] " CHEESE
read -r -p "Instalar o SoundRecorder? Gravador de Som simples! [y|n] " SOUNDRECORDER
read -r -p "Instalar o Transmission? Cliente BitTorrent! [y|n] " TORRENT
read -r -p "Instalar o Gimp? - Editor de imagem! [y|n] " GIMP
read -r -p "Instalar o Inkscape? - Design gráfico! [y|n] " INKSCAPE
read -r -p "Instalar o Audacity? - Editor, gravador de áudio! [y|n] " AUDACITY
read -r -p "Instalar o Clementine? - Player de Música! [y/n] " CLEMENTINE
read -r -p "Instalar o VLC? - Media Player! [y|n] " VLC
read -r -p "Instalar o WinFF? - Conversor de vídeos! [y|n] " WINFF
read -r -p "Instalar o Jogos Nativos? [y|n] " JOGOS
read -r -p "Instalar o LibreOffice? - Suite office compatível com Microsoft Office! [y|n] " LIBREOFFICE
read -r -p "Instalar o OnlyOffice? - Suite office! [y|n] " ONLYOFFICE
read -r -p "Instalar o Microsoft Edge? - Navegadores de Internet! [y|n] " EDGE
read -r -p "Instalar o Chromium? - Navegadores de Internet! [y|n] " CHROMIUM
read -r -p "Instalar o Google Chrome? - Navegadores de Internet! [y|n] " CHROME
read -r -p "Instalar o Google Earth? - Mapas do Google! [y|n] " EARTH
read -r -p "Instalar o DropBox? - Arquivos em nuvem! [y|n] " DROPBOX
read -r -p "Instalar o MegaSync? - Arquivos em nuvem! [y|n] " MEGASYNC
read -r -p "Instalar o TeamViewer? - Acesso remoto! [y|n] " TEAMVIEWER
read -r -p "Instalar o AnyDesk? - Acesso remoto! [y|n] " ANYDESK
read -r -p "Instalar o RustDesk? - Acesso remoto! [y|n] " RUSTDESK
read -r -p "Instalar o DWService? - Acesso remoto! [y|n] " DWSERVICE
read -r -p "Instalar o EMBY? - Servidor de multimidia! [y|n] " EMBY
read -r -p "Instalar o BalenaEtcher? - Gravador ISO em USB! [y|n] " BALENAETCHER
read -r -p "Instalar o VSCode? - Editores de código! [y|n] " VSCODE
read -r -p "Instalar o VSCodium? - Editores de código! [y|n] " VSCODIUM
read -r -p "Instalar o Node JS? - Ambiente de execução Javascript server-side! [y|n] " NODEJS
read -r -p "Instalar o SQLite? - Banco de dados sql! [y|n] " SQLITE
read -r -p "Instalar o Antares? SQL - Ferramenta de gerenciamento do banco de dados! [y|n] " ANTARESSQL
read -r -p "Instalar o SAMBA? - Compartilhamento de arquivos de servidores Linux à Windows! [y|n] " SAMBA
read -r -p "Instalar o XAMPP? - Servidor Apache, MySQL,PHP e PHPMYADMIN! [y|n] " XAMPP
read -r -p "Instalar o KVM? - Gerenciador de Virtualização! [y|n] " KVM
read -r -p "Instalar a Gnome Software? - Loja de  Software Gnome! [y|n] " GNOMESOFTWARE
read -r -p "Instalar o Flatpak? - Loja de Software Flathub! [y|n] " FLATPAK
read -r -p "Instalar o Conky? Monitor de sistema widgets da área de trabalho! [y|n] " CONKY
read -r -p "Instalar o OH-MY-BASH? Tema do terminal bash! [y|n] " OHMYBASH
######################################################################

#Sinaptic
if [ "$SYNAPTIC" = "y" ]; then
    apt install -y synaptic
else
    apt remove -y synaptic
fi
#Gparted
if [ "$GPARTED" = "y" ]; then
    apt install -y gparted
fi
#Gnome Disk
if [ "$GNOMEDISK" = "y" ]; then
    apt install -y gnome-disk-utility baobab
fi
#Gufw
if [ "$GUFW" = "y" ]; then
    apt install -y gufw
fi
#Blueman
if [ "$BLUEMAN" = "y" ]; then
    apt install -y blueman
fi
#Cups
if [ "$CUPS" = "y" ]; then
    apt install -y printer-driver-all
    apt install -y hplip hp-ppd
    apt install -y openprinting-ppds
    apt install -y simple-scan
fi
#Cheese
if [ "$CHEESE" = "y" ]; then
    apt install -y cheese
fi
#Sound Recorder
if [ "$SOUNDRECORDER" = "y" ]; then
    apt install -y gnome-sound-recorder
fi
#TORRENT
if [ "$TORRENT" = "y" ]; then
    apt install -y transmission
fi
#Gimp
if [ "$GIMP" = "y" ]; then
    apt install -y gimp
fi
#Inkscape
if [ "$INKSCAPE" = "y" ]; then
    apt install -y inkscape
fi
#AUDACITY
if [ "$AUDACITY" = "y" ]; then
    apt install -y audacity
fi
#Clementine
if [ "$CLEMENTINE" = "y" ]; then
    apt install -y clementine
fi
#VLC
if [ "$VLC" = "y" ]; then
    apt install -y vlc
    apt install -y libdvd-pkg
    dpkg-reconfigure libdvd-pkg
fi
#WinFF
if [ "$WINFF" = "y" ]; then
    apt install -y winff
fi
#JOGOS
if [ "$JOGOS" = "y" ]; then
    apt install -y aisleriot gnome-chess gnome-nibbles kcheckers quadrapassel mednafen
fi
#Chromium
if [ "$CHROMIUM" = "y" ]; then
    apt install -y chromium chromium-l10n
fi
#SQLite
if [ "$SQLITE" = "y" ]; then
    apt install -y sqlite3 sqlitebrowser
fi
#KVM
if [ "$KVM" = "y" ]; then
    apt install -y virt-manager
    virsh net-autostart default
fi
#Gnome Software
if [ "$GNOMESOFTWARE" = "y" ]; then
    apt install -y gnome-software
fi
#Flatpak / Flathub
if [ "$FLATPAK" = "y" ]; then
    apt install -y flatpak
    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
    apt install -y gnome-software-plugin-flatpak
fi
#LibreOffice
if [ "$LIBREOFFICE" = "y" ]; then
    sh libreoffice.sh
fi
#OnlyOffice
if [ "$ONLYOFFICE" = "y" ]; then
    sh onlyoffice.sh
fi
#DropBox
if [ "$DROPBOX" = "y" ]; then
    sh dropbox.sh
fi
#MegaSync
if [ "$MEGASYNC" = "y" ]; then
    sh mega.sh
fi
#TeamViewer
if [ "$TEAMVIEWER" = "y" ]; then
    sh teamviewer.sh
fi
#AnyDesk
if [ "$ANYDESK" = "y" ]; then
    sh anydesk.sh
fi
#RustDesk
if [ "$RUSTDESK" = "y" ]; then
    sh rustdesk.sh
fi
#Enby
if [ "$EMBY" = "y" ]; then
    sh emby.sh
fi
#BalenaEtcher
if [ "$BALENAETCHER" = "y" ]; then
    sh balenaetcher.sh
fi
#VSCodium
if [ "$VSCODIUM" = "y" ]; then
    sh vscodium.sh
fi
#Antares SQL
if [ "$ANTARESSQL" = "y" ]; then
    sh antares.sh
fi
#Google - Chrome e Earth
if [ "$CHROME" = "y" ]; then
    sh chrome.sh
fi
if [ "$EARTH" = "y" ]; then
    sh earth.sh
fi
#Microsoft - Edge e VSCode
if [ "$EDGE" = "y" ]; then
    sh edge.sh
fi
if [ "$VSCODE" = "y" ]; then
    sh vscode.sh
fi
#Node JS
if [ "$NODEJS" = "y" ]; then
    sh nodejs.sh
fi
#SAMBA
if [ "$SAMBA" = "y" ]; then
    sh samba.sh
fi
#DWService
if [ "$DWSERVICE" = "y" ]; then
    sh dwagent.sh
fi
#XAMPP
if [ "$XAMPP" = "y" ]; then
    sh xampp.sh
fi
#CONKY
if [ "$CONKY" = "y" ]; then
    sh conky.sh
fi
#OHMYBASH
if [ "$OHMYBASH" = "y" ]; then
    sh ohmybash.sh
fi
#----------End----------#
#Atualizar Grub, Limpeza apt
update-grub2 && apt autoremove -y && apt autoclean && apt clean
#Reinicia o sistema
read -r -p "Instalação concluida! Seu pc precisa ser reiniciad! Deseja reiniciar agora? [y|n] " REBOOT
if [ "$REBOOT" = "y" ]; then
    rm -f -r /tmp/* && reboot
else
    rm -f -r /tmp/*
fi
