#!/bin/bash

for pkgName in $(cat app_30_jan_2021.txt)
do
    pacman -S --force --noconfirm $pkgName
done

echo "Re--Install-Successfully!"
