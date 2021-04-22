#!/bin/bash 




gnome-terminal -e cmus &

sleep 5s


cmus-remote -C clear
#cmus-remote -C "add /absolute-path-to-your-music-folder"
cmus-remote -C "add ~/Music"
cmus-remote -C "update-cache -f"
