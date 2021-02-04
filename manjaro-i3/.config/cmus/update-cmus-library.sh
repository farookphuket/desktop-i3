#!/bin/bash


konsole -e cmus &

sleep 12s


cmus-remote -C clear
#cmus-remote -C "add /absolute-path-to-your-music-folder"
cmus-remote -C "add /run/media/farook/DATA2TB/ITuneCopy"
cmus-remote -C "update-cache -f"

