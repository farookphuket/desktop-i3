#!/bin/bash


# copy config for xfce


#cp -r zsh/powerlevel10k ~/
#
#cp zsh/.p10k.zsh ~/
#cp zsh/.zshrc ~/


if [[ -d /usr/share/zsh ]]; then
  sudo -s  mv /usr/share/zsh /usr/share/zsh.old 
fi

if [[ -d /usr/share/zsh-theme-powerlevel10k ]]; then
  sudo -s  mv /usr/share/zsh-theme-powerlevel10k /usr/share/zsh-theme-powerlevel10k.old 

fi


sudo -s cp -r MANJARO_XFCE/zsh /usr/share 
sudo -s cp -r MANJARO_XFCE/zsh-theme-powerlevel10k /usr/share 

chsh -s /usr/bin/zsh 

echo "--------------------Success config file -----------------"
echo " your shell is $SHELL "
echo "if your shell is not zsh please logout "
echo " the config file has been copied! "

sleep 5s
exit
