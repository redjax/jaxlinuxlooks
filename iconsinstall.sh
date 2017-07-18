#!/bin/bash

# Sublime Text Icon
cp sublime-text.png /usr/share/icons/

# Arc-OSX-Icons
git clone https://github.com/LinxGem33/Arc-OSX-Icons.git /usr/share/icons/Arc-OSX-Icons
cd /usr/share/themes/Arc-OSX-Icons/src/
cp -R * /usr/share/themes/

# Plane icon theme
git clone https://github.com/wfpaisa/plane-icon-theme.git /usr/share/icons/Plane
cd /usr/share/Plane
cp -R src/* ../

# Evolvere
git clone https://github.com/franksouza183/EvolvereSuit.git /usr/share/icons/Evolere

# Luv Icons
git clone https://github.com/Nitrux/luv-icon-theme.git /usr/share/icons/Luv-Icons
cd /usr/share/icons/Luv-Icons
cp -R Luv ../Luv

# Matrilineare
git clone https://github.com/n3storm/Matrilineare.git /usr/share/icons/Matrilineare

# Xenlism Wildfire
git clone https://github.com/xenlism/wildfire.git /usr/share/icons/Xenlism-Wildfire
cd /usr/share/icons/Xenlism-Wildfire/INSTALL
./git.install

# Obsidian
git clone https://github.com/madmaxms/iconpack-obsidian.git /usr/share/icons/Obsidian

# Lila HD
git clone https://github.com/ilnanny/Lila-HD-icon-theme.git /usr/share/icons/Lila-HD
cd /usr/share/icons/Lila-HD
./install.sh

# Emerald
git clone https://github.com/vinceliuice/emerald-icon-theme.git /usr/share/icons/Emerald
cd /usr/share/icons/Emerald
./Emerald-installer.sh

# Paper
git clone https://github.com/snwh/paper-icon-theme.git /usr/share/icons/Paper
cd /usr/share/icons/Paper
cp -R Paper ../Paper-Icons

# Flat Remix
git clone https://github.com/daniruiz/Flat-Remix.git /usr/share/icons/Flat-Remix
cd /usr/share/icons/Flat-Remix
cp -R Flat\ Remix ../Flat\ Remix

# Remove icons install script from icons directory
rm /usr/share/themes/iconsinstall.sh
