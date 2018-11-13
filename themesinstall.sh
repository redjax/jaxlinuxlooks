#!/bin/bash

gitcl="git clone --progress --verbose"
themesfolder="/usr/share/themes"
iconsfolder="/usr/share/icons"
fontsfolder="/usr/share/fonts"

# Cursors

# La Capitaine
#dnf copr enable tcg/themes
#dnf install la-capitaine-cursor-theme

$gitcl https://github.com/keeferrourke/capitaine-cursors.git ~/home/Downloads/la-capitaine-cursor
cp -pr ~/home/Downloads/la-capitaine-cursor-theme/bin/xcursor $iconsfolder/capitaine-cursors

# ----------------------------------------------------------------------------------------

# Themes

# Move Window Buttons to the Left
gsettings set  org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

# Xenlism Minimalism
$gitcl https://github.com/xenlism/minimalism $themesfolder/Xenlism-Minimalism

# Flat Remix
$gitcl https://github.com/daniruiz/Flat-Remix-GNOME-theme.git $themesfolder/Flat-Remix

# Arc
$gitcl https://github.com/horst3180/arc-theme.git $themesfolder/Arc

# Gnome-OSX
$gitcl https://github.com/paullinuxthemer/Gnome-OSX.git $themesfolder/Gnome-OSX

# Minwaita
$gitcl https://github.com/godlyranchdressing/Minwaita.git $themesfolder/Minwaita

# Arc Menu
$gitcl https://github.com/LinxGem33/Arc-Menu.git ~/Downloads/Arc-Menu
cd ~/Downloads/Arc-Menu
make install
make enable

# OSX-Arc-Darker
$gitcl https://github.com/LinxGem33/OSX-Arc-Darker.git $themesfolder/OSX-Arc-Darker

# OSX-Arc-Shadow
$gitcl https://github.com/LinxGem33/OSX-Arc-Shadow.git $themesfolder/OSX-Arc-Shadow

# OSX-Arc-White
$gitcl https://github.com/LinxGem33/OSX-Arc-White.git $themesfolder/OSX-Arc-White

# OSX-Arc-Plus
$gitcl https://github.com/LinxGem33/OSX-Arc-Plus.git $themesfolder/OSX-Arc-Plus

# ----------------------------------------------------------------------------------------

# Icons

# Sublime Text Icon
cp sublime-text.png $iconsfolder/

# Arc-OSX-Icons
$gitcl https://github.com/LinxGem33/Arc-OSX-Icons.git $iconsfolder/Arc-OSX-Icons
cd $themesfolder/Arc-OSX-Icons/src/
cp -R * $themesfolder/

# Plane icon theme
$gitcl https://github.com/wfpaisa/plane-icon-theme.git $iconsfolder/Plane
cd /usr/share/Plane
cp -R src/* ../

# Evolvere
$gitcl https://github.com/franksouza183/EvolvereSuit.git $iconsfolder/Evolere

# Luv Icons
$gitcl https://github.com/Nitrux/luv-icon-theme.git $iconsfolder/Luv-Icons
cd $iconsfolder/Luv-Icons
cp -R Luv ../Luv

# Matrilineare
$gitcl https://github.com/n3storm/Matrilineare.git $iconsfolder/Matrilineare

# Xenlism Wildfire
$gitcl https://github.com/xenlism/wildfire.git $iconsfolder/Xenlism-Wildfire
cd $iconsfolder/Xenlism-Wildfire/INSTALL
./git.install

# Obsidian
$gitcl https://github.com/madmaxms/iconpack-obsidian.git $iconsfolder/Obsidian

# Lila HD
$gitcl https://github.com/ilnanny/Lila-HD-icon-theme.git $iconsfolder/Lila-HD
cd $iconsfolder/Lila-HD
./install.sh

# Emerald
$gitcl https://github.com/vinceliuice/emerald-icon-theme.git $iconsfolder/Emerald
cd $iconsfolder/Emerald
./Emerald-installer.sh

# Paper
$gitcl https://github.com/snwh/paper-icon-theme.git $iconsfolder/Paper
cd $iconsfolder/Paper
cp -R Paper ../Paper-Icons

# Flat Remix
$gitcl https://github.com/daniruiz/Flat-Remix.git $iconsfolder/Flat-Remix
cd $iconsfolder/Flat-Remix
cp -R Flat\ Remix ../Flat\ Remix

# Elementary Add
$gitcl https://github.com/varlesh/elementary-add.git $iconsfolder/elementary-add-holing
cd $iconsfolder/elementary-add-holding
cp -R elementary-* ../
cd ../ && rm -rf elementary-add-holding

# ----------------------------------------------------------------------------------------
