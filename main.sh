#!/bin/sh
#Interromper o script se algum comando falhar.
set -e
#Mudar lingual do Sistema
update-locale LANG=pt_BR.UTF-8 && locale-gen --purge pt_BR.UTF-8
#-----Repositorio-----# #Desativar CDROM, Habilitar Extra, oldstable
sed -i 's/deb cdrom:/#deb cdrom:/g' /etc/apt/sources.list
apt install -y software-properties-common software-properties-gtk
add-apt-repository -y contrib non-free
add-apt-repository -y "deb http://deb.debian.org/debian/ oldstable main contrib non-free"
apt update && apt upgrade -y
#firmware Drives
apt install -y linux-headers-$(uname -r)
apt install -y firmware-linux
apt install -y firmware-amd-graphics
apt install -y firmware-iwlwifi
apt install -y firmware-atheros
apt install -y firmware-realtek
apt install -y firmware-b43legacy-installer
apt install -y firmware-b43-installer
apt install -y intel-microcode intel-gpu-tools
apt install -y amd64-microcode amdgcn-tools
apt install -y mesa-vulkan-drivers mesa-utils
apt install -y libglapi-mesa libgl1-mesa-dri libgles2 libegl1
#Interface grafica XFCE4
apt install -y xfce4-terminal
apt install -y xorg
apt install -y xfce4-session
apt install -y xfce4-panel xfce4-panel-profiles
apt install -y xfce4-power-manager xfce4-taskmanager
apt install -y xfce4-notifyd xfce4-screenshooter xfce4-appfinder
apt install -y xfce4-whiskermenu-plugin xfce4-pulseaudio-plugin
apt install -y xfce4-weather-plugin xfce4-cpugraph-plugin
#Software extras XFCE
apt install -y menulibre mugshot
apt install -y thunar thunar-archive-plugin thunar-media-tags-plugin
apt install -y gigolo gvfs-*
apt install -y parole ristretto
apt install -y mousepad xarchiver
apt install -y xdg-user-dirs xdg-user-dirs-gtk
apt install -y elementary-xfce-icon-theme
#Themes
apt install -y breeze-gtk-theme breeze-cursor-theme xfwm4-theme-breeze
apt install -y arc-theme orchis-gtk-theme bibata-cursor-theme
#Software Padrão
apt install -y firefox-esr atril galculator deepin-screen-recorder
#Gerenciador Login
apt install -y lightdm-gtk-greeter-settings
sed -i 's/#greeter-hide-users=false/greeter-hide-users=false/g' /etc/lightdm/lightdm.conf
#Gerenciador Boot
apt install -y plymouth plymouth-themes grub-theme-starfield
plymouth-set-default-theme -R bgrt
#Gerenciador de sistema.
apt install -y network-manager network-manager-gnome gnome-system-tools
apt install -y deepin-deb-installer package-update-indicator
#Programas de Shell e Config Net-tools
apt install -y bash-completion net-tools command-not-found neofetch arping
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/X11
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
#Codecs para descompaquitar arquivos
apt install -y zip p7zip* unrar* unzip rar arc arj cabextract lhasa unace* xz-utils sharutils uudeview mpack
#Codecs de audio e video
apt install -y ffmpeg mencoder faad lame sox twolame vorbis-tools libavcodec-extra* gstreamer1.0-fdkaac gstreamer1.0-plugins-ugly
####Config####
#Grub
sed -i 's/#GRUB_GFXMODE=640x480/GRUB_GFXMODE=1024x768/g' /etc/default/grub
sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash modprobe.blacklist=pcspkr"/g' /etc/default/grub
sed -i '11i GRUB_THEME="/usr/share/grub/themes/starfield/theme.txt"' /etc/default/grub
sed -i 's/starfield.png/\/usr\/share\/images\/desktop-base\/desktop-grub.png/g' /usr/share/grub/themes/starfield/theme.txt
grub-mkconfig -o /boot/grub/grub.cfg
#Desktop Base
unlink /etc/alternatives/desktop-theme
ln -s /usr/share/desktop-base/dx-theme/ /etc/alternatives/desktop-theme
#Copy Files Configs
cp -f -r config/etc/* /etc/
cp -f -r config/usr/* /usr/
#XFCE Backgrounds e Navegador Padrão
ln -sf /usr/share/backgrounds/xfce/* /usr/share/backgrounds/
sed -i 's/debian-sensible-browser/default-browser.desktop/g' /etc/xdg/xfce4/helpers.rc
rm -f -r /usr/share/icons/elementary-xfce-darke*
rm -f -r /usr/share/themes/Daloa*
rm -f -r /usr/share/themes/Kokodi*
rm -f -r /usr/share/themes/Moheli*
#Configurações Extras
sed -i '4i Name[pt_BR]=Calculadora' /usr/share/applications/galculator.desktop
#Software Extra
sh utilities.sh
