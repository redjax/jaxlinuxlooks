#!/bin/bash

# Move Window Buttons to the Left
gsettings set  org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'
# Xenlism Minimalism
git clone https://github.com/xenlism/minimalism /usr/share/themes/Xenlism-Minimalism

# Flat Remix
git clone https://github.com/daniruiz/Flat-Remix-GNOME-theme.git /usr/share/themes/Flat-Remix

# Arc
git clone https://github.com/horst3180/arc-theme.git /usr/share/themes/Arc

# Gnome-OSX
git clone https://github.com/paullinuxthemer/Gnome-OSX.git /usr/share/themes/Gnome-OSX

# Minwaita
git clone https://github.com/godlyranchdressing/Minwaita.git /usr/share/themes/Minwaita

# Arc Menu
git clone https://github.com/LinxGem33/Arc-Menu.git ~/Downloads/Arc-Menu
cd ~/Downloads/Arc-Menu
make install
make enable

# OSX-Arc-Darker
git clone https://github.com/LinxGem33/OSX-Arc-Darker.git /usr/share/themes/OSX-Arc-Darker

# OSX-Arc-Shadow
git clone https://github.com/LinxGem33/OSX-Arc-Shadow.git /usr/share/themes/OSX-Arc-Shadow

# OSX-Arc-White
git clone https://github.com/LinxGem33/OSX-Arc-White.git /usr/share/themes/OSX-Arc-White

# OSX-Arc-Plus
git clone https://github.com/LinxGem33/OSX-Arc-Plus.git /usr/share/themes/OSX-Arc-Plus


# Remove script from themes directory
rm /usr/share/themes/themesinstall.sh
