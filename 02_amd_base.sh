#!/bin/bash

echo -e '\nInstalando o sistema base INTEL - linux e linux-zen\n'

pacstrap /mnt base linux-firmware linux-zen linux-zen-headers dkms base-devel amd-ucode reflector

echo -e '\nGerando o FSTAB\n'

genfstab -U -p /mnt >> /mnt/etc/fstab

echo -e '\nCopiando os arquivos do SetupMyArch\n'

mkdir /mnt/home/ArchSetup

cp -rv ./* /mnt/home/ArchSetup

echo -e '\nExecutando o chroot\n'

cp -v /etc/pacman.d/mirrorlist /mnt/etc/pacman.d/

arch-chroot /mnt

