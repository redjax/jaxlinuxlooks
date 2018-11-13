#!/bin/bash

gitcl="git clone --progress --verbose"
themesfolder="/usr/share/themes"
fontsfolder="/usr/share/fonts"
iconsfolder="/usr/share/icons"

# IDEA:
# Store themes in JSON as {"theme-name":"theme URL"}
# Create list of theme names, loop through list to find URL from JSON,
# build git clone and local folder from theme's name
#
# I.e. https://codepad.co/snippet/O9pqPiQe
#
# If I go with this method, theme names will have to be consistent
# between the JSON and the script's list.

#protocode

$gitcl https://github.com/user/repo $themesfolder/$repo
