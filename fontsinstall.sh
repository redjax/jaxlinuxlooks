#!/bin/bash

# Fonts install

# Hasklig
git clone --progress --verbose https:/github.com/i-tu/Hasklig.git /home/jack/Downloads/test/

# DejaVu Sans Code
git clone --progress --verbose https:/github.com/SSNikolaevich/DejaVuSansCode /home/jack/Downloads/test/

# Adobe Source Code Pro
git clone --progress --verbose https:/github.com/adobe-fonts/source-code-pro.git /home/jack/Downloads/test/

# Fira Code
git clone --progress --verbose https:/github.com/tonsky/FiraCode.git /home/jack/Downloads/test/

# Droid Sans Mono
git clone --progress --verbose https:/github.com/AlbertoDorado/droid-sans-mono-zeromod.git /home/jack/Downloads/test/

# Google Fonts
git clone --progress --verbose https:/github.com/google/fonts.git /home/jack/Downloads/test/

# Intel ClearSans
cd /home/jack/Downloads/
wget https://01.org/sites/default/files/downloads/clear-sans/clearsans-1.00.zip

unzip clearsans*.zip -d clearsans
sudo cp -R clearsans /usr/share/fonts/

rm -rf clearsans
rm clearsans-*.zip
