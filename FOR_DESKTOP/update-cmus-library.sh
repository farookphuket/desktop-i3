#!/bin/bash


xfce4-terminal -e cmus &

sleep 10s

cmus-remote -C clear
#cmus-remote -C "add /absolute-path-to-your-music-folder"
#   make sure you change this line to your path
cmus-remote -C "add /run/media/farook/DATA2TB/ITune_ME"
cmus-remote -C "update-cache -f"

