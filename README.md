jaxlinuxlooks

# What:

I'm a piece of shit and decided to use git to manage my Linux themes and icons (and eventually fonts, hopefully).

# How:

I use the thememgr.sh script with -b/--backup to backup themes and icons to the git backup/ directory, then push to github. On a new machine, I run the script with the -r/--restore to restore the themes and icons to the $HOME/{.themes, .local/share/icons} directories.

# thememgr.sh usage

Run the script with -h/--help or no flags to see usage. Create a backup with -b/--backup, restore a backup with -r/--restore, on a new machine run initialization with -s/--setup (TODO: Add a check to see if initial setup has been run).