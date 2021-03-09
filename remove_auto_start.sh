#!/bin/bash



TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")


# copy auto start app
if [[ -d ~/.config/autostart ]] && [[ -n `ls -A ~/.config/autostart` ]]; then
    mkdir ~/Documents/backup
    cp -r ~/.config/autostart ~/Documents/backup/autostart.old_$TODAY
    rm -rf ~/.config/autostart/*
fi

