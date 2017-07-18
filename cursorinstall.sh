#!/bin/bash

# La Capitaine
#dnf copr enable tcg/themes
#dnf install la-capitaine-cursor-theme

git clone https://github.com/keeferrourke/capitaine-cursors.git ~/home/Downloads/la-capitaine-cursor
cp -pr ~/home/Downloads/la-capitaine-cursor-theme/bin/xcursor /usr/share/icons/capitaine-cursors

# Remove cursor install script from icons directory
rm /usr/share/themes/cursorinstall.sh
