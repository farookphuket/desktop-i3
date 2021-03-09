#!/bin/bash


# copy config for xfce


#cp -r zsh/powerlevel10k ~/
#
#cp zsh/.p10k.zsh ~/
#cp zsh/.zshrc ~/

TODAY=$(date +"%Y-%m-%d_at_%H:%M:%S")



if [[ -f ~/.zshrc ]]; then 
    mv ~/.zshrc ~/.zshrc.old_$TODAY
fi
cp MANJARO_XFCE/.zshrc ~/ 



if [[ -d /usr/share/zsh ]]; then
  sudo -s  mv /usr/share/zsh /usr/share/zsh.old_$TODAY
fi

if [[ -d /usr/share/zsh-theme-powerlevel10k ]]; then
  sudo -s  mv /usr/share/zsh-theme-powerlevel10k /usr/share/zsh-theme-powerlevel10k.old_$TODAY

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
