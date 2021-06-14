#!/bin/bash

#
# Applet to manage installation of themes
#

THEME_DIR=$HOME"/.themes"
ICON_DIR=$HOME"/.local/share/icons"
STAGE_DIR=$HOME"/Downloads/themes"

#BACKUP_DIR=$HOME"/backup"
BACKUP_DIR=./backup
#THEME_BACKUP_DIR=$BACKUP_DIR"/themes"
THEME_BACKUP_DIR="./backup/themes"
#ICON_BACKUP_DIR=$BACKUP_DIR"/icons"
ICON_BACKUP_DIR="./backup/icons"

DEPEND_ARRAY=( "unzip" "rsync" )


SETUP () {
    # Create backup dir if it doesn't exist
    if [[ ! -d $BACKUP_DIR ]]; then
        echo "Backup directory "$BACKUP_DIR" does not exist. Creating..."
        echo ""

        mkdir -pv $BACKUP_DIR $GTK_THEME_BACKUP_DIR $ICON_BACKUP_DIR

        echo ""
        echo "Backup directory created."

    else
        echo "Backup directory "$BACKUP_DIR" exists, skipping."
        echo ""
    fi

    # Check if dependencies installed, install if not
    for DEP in "${DEPEND_ARRAY[@]}"
    do
        if ! command -v $DEP &> /dev/null
        then
            echo ""
            echo "Dependency "$DEP" not installed. Installing..."
            echo ""
            sudo apt install -y $DEP
        fi
    done
}

EXTRACT () {
    # Extract function
     if [ -f $1 ] ; then
         case $1 in
             *.tar.bz2)   tar xjf $1     ;;
             *.tar.gz)    tar xzf $1     ;;
             *.bz2)       bunzip2 $1     ;;
             *.rar)       rar x $1       ;;
             *.gz)        gunzip $1      ;;
             *.tar)       tar xf $1      ;;
             *.tbz2)      tar xjf $1     ;;
             *.tgz)       tar xzf $1     ;;
             *.zip)       unzip $1       ;;
             *.Z)         uncompress $1  ;;
             *.7z)        7z x $1    ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

SYNCHRONIZE () {
    echo "Synching themes to "$THEME_BACKUP_DIR
    echo ""
    rsync -r $THEME_DIR/* $THEME_BACKUP_DIR

    echo "Synching icons to "$ICON_BACKUP_DIR
    echo ""
    rsync -r $ICON_DIR/* $ICON_BACKUP_DIR

}

RESTORE () {
    # On a new machine, run RESTORE to move icons and themes into place
    echo "Restoring themes to "$THEME_DIR
    echo ""
    
    if [[ ! -d $THEME_DIR ]]; then
        mkdir -pv $THEME_DIR
    fi
    
    rsync -r $THEME_BACKUP_DIR/* $THEME_DIR

    echo "Restoring icons to "$ICON_DIR
    echo ""
    
    if [[ ! -d $ICON_DIR ]]; then
        mkdir -pv $ICON_DIR
    fi
    
    rsync -r $ICON_BACKUP_DIR/* $ICON_DIR
}

SYNCHRONIZE