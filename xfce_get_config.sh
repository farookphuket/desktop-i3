#!/bin/bash


# copy config for xfce


#cp -r zsh/powerlevel10k ~/
#
#cp zsh/.p10k.zsh ~/
#cp zsh/.zshrc ~/


if [[ -d /usr/share/zsh ]]; then
    mv /usr/share/zsh /usr/share/zsh.old 
fi

if [[ -d /usr/share/zsh-theme-powerlevel10k ]]; then
    mv /usr/share/zsh-theme-powerlevel10k /usr/share/zsh-theme-powerlevel10k.old 
fi


cp -r MANJARO/zsh /usr/share 
cp -r MANJARO/zsh-theme-powerlevel10k /usr/share 

chsh -s /usr/bin/zsh 

echo "--------------------Success config file -----------------"
echo " your shell is $SHELL "
echo "if your shell is not zsh please logout "
echo " the config file has been copied! "

sleep 5s
exit
