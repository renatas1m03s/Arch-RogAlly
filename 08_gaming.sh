#!/bin/bash

yay -Sy --noconfirm steam-native-runtime gamescope-plus

yay -S --noconfirm gamescope-session-git gamescope-session-steam-git

yay -S --noconfirm hhd adjustor hhd-ui

yay -S --noconfirm kpat protonup-qt retroarch-git emulationstation-de 

sudo systemctl enable hhd@renata

# sudo setcap 'CAP_SYS_NICE=eip' /usr/bin/gamescope


