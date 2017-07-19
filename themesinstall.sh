#!/bin/bash

# Cursors

# La Capitaine
#dnf copr enable tcg/themes
#dnf install la-capitaine-cursor-theme

git clone --progress --verbose https://github.com/keeferrourke/capitaine-cursors.git ~/home/Downloads/la-capitaine-cursor
cp -pr ~/home/Downloads/la-capitaine-cursor-theme/bin/xcursor /usr/share/icons/capitaine-cursors

# ----------------------------------------------------------------------------------------

# Themes

# Move Window Buttons to the Left
gsettings set  org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# Xenlism Minimalism
git clone --progress --verbose https://github.com/xenlism/minimalism /usr/share/themes/Xenlism-Minimalism

# Flat Remix
git clone --progress --verbose https://github.com/daniruiz/Flat-Remix-GNOME-theme.git /usr/share/themes/Flat-Remix

# Arc
git clone --progress --verbose https://github.com/horst3180/arc-theme.git /usr/share/themes/Arc

# Gnome-OSX
git clone --progress --verbose https://github.com/paullinuxthemer/Gnome-OSX.git /usr/share/themes/Gnome-OSX

# Minwaita
git clone --progress --verbose https://github.com/godlyranchdressing/Minwaita.git /usr/share/themes/Minwaita

# Arc Menu
git clone --progress --verbose https://github.com/LinxGem33/Arc-Menu.git ~/Downloads/Arc-Menu
cd ~/Downloads/Arc-Menu
make install
make enable

# OSX-Arc-Darker
git clone --progress --verbose https://github.com/LinxGem33/OSX-Arc-Darker.git /usr/share/themes/OSX-Arc-Darker

# OSX-Arc-Shadow
git clone --progress --verbose https://github.com/LinxGem33/OSX-Arc-Shadow.git /usr/share/themes/OSX-Arc-Shadow

# OSX-Arc-White
git clone --progress --verbose https://github.com/LinxGem33/OSX-Arc-White.git /usr/share/themes/OSX-Arc-White

# OSX-Arc-Plus
git clone --progress --verbose https://github.com/LinxGem33/OSX-Arc-Plus.git /usr/share/themes/OSX-Arc-Plus

# ----------------------------------------------------------------------------------------

# Icons

# Sublime Text Icon
cp sublime-text.png /usr/share/icons/

# Arc-OSX-Icons
git clone --progress --verbose https://github.com/LinxGem33/Arc-OSX-Icons.git /usr/share/icons/Arc-OSX-Icons
cd /usr/share/themes/Arc-OSX-Icons/src/
cp -R * /usr/share/themes/

# Plane icon theme
git clone --progress --verbose https://github.com/wfpaisa/plane-icon-theme.git /usr/share/icons/Plane
cd /usr/share/Plane
cp -R src/* ../

# Evolvere
git clone --progress --verbose https://github.com/franksouza183/EvolvereSuit.git /usr/share/icons/Evolere

# Luv Icons
git clone --progress --verbose https://github.com/Nitrux/luv-icon-theme.git /usr/share/icons/Luv-Icons
cd /usr/share/icons/Luv-Icons
cp -R Luv ../Luv

# Matrilineare
git clone --progress --verbose https://github.com/n3storm/Matrilineare.git /usr/share/icons/Matrilineare

# Xenlism Wildfire
git clone --progress --verbose https://github.com/xenlism/wildfire.git /usr/share/icons/Xenlism-Wildfire
cd /usr/share/icons/Xenlism-Wildfire/INSTALL
./git.install

# Obsidian
git clone --progress --verbose https://github.com/madmaxms/iconpack-obsidian.git /usr/share/icons/Obsidian

# Lila HD
git clone --progress --verbose https://github.com/ilnanny/Lila-HD-icon-theme.git /usr/share/icons/Lila-HD
cd /usr/share/icons/Lila-HD
./install.sh

# Emerald
git clone --progress --verbose https://github.com/vinceliuice/emerald-icon-theme.git /usr/share/icons/Emerald
cd /usr/share/icons/Emerald
./Emerald-installer.sh

# Paper
git clone --progress --verbose https://github.com/snwh/paper-icon-theme.git /usr/share/icons/Paper
cd /usr/share/icons/Paper
cp -R Paper ../Paper-Icons

# Flat Remix
git clone --progress --verbose https://github.com/daniruiz/Flat-Remix.git /usr/share/icons/Flat-Remix
cd /usr/share/icons/Flat-Remix
cp -R Flat\ Remix ../Flat\ Remix

# ----------------------------------------------------------------------------------------


