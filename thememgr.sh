#!/bin/bash

#
# Applet to manage installation and backup of themes and icons
#

# Variables ------------------------------------------------------------------

# Dirs on local machine
THEME_DIR=$HOME"/.themes"
ICON_DIR=$HOME"/.local/share/icons"
STAGE_DIR=$HOME"/Downloads/themes"

#BACKUP_DIR=$HOME"/backup"
BACKUP_DIR=./backup
THEME_BACKUP_DIR="./backup/themes/"
ICON_BACKUP_DIR="./backup/icons/"

# Necessary installed software. Will be checked before running extract()
DEPEND_ARRAY=( "unzip" "rsync" )

# Functions ------------------------------------------------------------------

function usage() {
  echo "Usage: $0 [-h|--help] [-b | --backup] [-r | --restore] [-s | --setup]"
  echo ""
  echo "-h | --help: Run program's help menu"
  echo "-b | --backup: Run backup job for themes and icons"
  echo "-r | --restore: Run restore job to install themes from repo"
  echo "-s | --setup: Run inital setup"
}

INSTALL_DEPENDENCIES () {
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

    INSTALL_DEPENDENCIES
}

EXTRACT () {
    # Run INSTALL_DEPENDENCIES to ensure archive software is installed
    INSTALL_DEPENDENCIES

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

BACKUP () {
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
    
    rsync -rla --ignore-existing $THEME_BACKUP_DIR/* $THEME_DIR

    echo "Restoring icons to "$ICON_DIR
    echo ""
    
    if [[ ! -d $ICON_DIR ]]; then
        mkdir -pv $ICON_DIR
    fi
    
    rsync -rla --ignore-existing $ICON_BACKUP_DIR/* $ICON_DIR
}

main () {

    if [[ $# -eq 0 ]] ; then
        # no args passed, print usage help
        usage
    else
        # Run a case statement for passed flags
        while [[ "$1" == -* ]]; do
            case "$1" in
                -s|--setup )
                    SETUP
                    ;;
                -b|--backup )
                    BACKUP
                    ;;
                -r|--restore )
                    RESTORE
                    ;;
                -h|--help )
                    usage
                    exit 0
                    ;;
                * )
                    # Nothing/unsupported flag passed, print usage
                    echo "Unrecognized option $1." && usage && exit 1 
                    ;;
                -- ) 
                    shift
                    break
                    ;;
            esac
            shift
        done
    fi

    exit 0
}

main $@
