#!/bin/bash


konsole -e cmus &

sleep 10s

cmus-remote -C clear
#cmus-remote -C "add /absolute-path-to-your-music-folder"

cmus-remote -C "add /home/farook/DATA/MY_MUSIC"
cmus-remote -C "update-cache -f"

