#!/bin/bash

# Fonts install

cd /home/jack/Downloads/test
mkdir test
chown test

git clone --verbose https:/github.com/i-tu/Hasklig.git /home/jack/Downloads/test/hasklig

# DejaVu Sans Code
git clone --progress --verbose https:/github.com/SSNikolaevich/DejaVuSansCode /home/jack/Downloads/test/dejavu-sans-code

# Adobe Source Code Pro
git clone --progress --verbose https:/github.com/adobe-fonts/source-code-pro.git /home/jack/Downloads/test/adobe-source-code-pro

# Fira Code
git clone --progress --verbose https:/github.com/tonsky/FiraCode.git /home/jack/Downloads/test/fira-code

# Droid Sans Mono
git clone --progress --verbose https:/github.com/AlbertoDorado/droid-sans-mono-zeromod.git /home/jack/Downloads/test/droid-sans-mono

# Google Fonts
git clone --progress --verbose https:/github.com/google/fonts.git /home/jack/Downloads/test/google-fonts

# Intel ClearSans
cd /home/jack/Downloads/
wget https://01.org/sites/default/files/downloads/clear-sans/clearsans-1.00.zip

unzip clearsans*.zip -d clearsans
sudo cp -R clearsans /usr/share/fonts/

rm -rf clearsans
rm clearsans-*.zip
