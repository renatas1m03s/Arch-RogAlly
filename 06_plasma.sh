#!/bin/bash

yay -Sy --needed  --noconfirm plasma-meta xorg-xlsclients bluez-utils  

yay -S --needed  --noconfirm packagekit-qt6 gnome-disk-utility konsole inetutils dnsutils

yay -S --needed  --noconfirm okular dolphin ark spectacle gwenview geany kcalc openconnect networkmanager-openconnect

yay -S --needed  --noconfirm kio kio-extras ffmpegthumbs kdegraphics-thumbnailers

yay -S --needed  --noconfirm kimageformats qt6-imageformats kdesdk-thumbnailers neofetch openvpn

yay -S --needed  --noconfirm raw-thumbnailer google-chrome usb_modeswitch update-grub pamac-tray-icon-plasma pamac-aur

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

yay -Sy --noconfirm plasma6-applets-panel-colorizer

## Specifics for rog ally

yay -Sy --noconfirm steam-native-runtime 

yay -Sy qt6-virtualkeyboard maliit-keyboard gamescope-plus gamescope-session-git gamescope-session-steam-git

sudo cp -v ./sddm.conf.d/* /etc/sddm.conf.d/
sudo cp -v ./wayland-sessions/* /usr/share/wayland-sessions/

## End Specifics for rog ally

sudo systemctl enable sddm
sudo systemctl enable bluetooth

cp -v ./functions/* /home/renata/.config/fish/functions/

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish




