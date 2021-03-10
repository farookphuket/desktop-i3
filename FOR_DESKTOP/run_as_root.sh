#!/bin/bash 


#   copy font 
cp -r ../font-twlg /usr/share/fonts/TH-FONTS

#   the program we need to install to setup i3wm 
pacman -S rofi feh nitrogen xxkb morc_menu --noconfirm

pacman -S arandr networkmanager network-manager-applet --noconfirm

pacman -S xdotool clipit xsel xclip  --noconfirm

pacman -S blueman pulseaudio pavucontrol pa-applet  --noconfirm

pacman -S bmenu picom conky-i3 w3m --noconfirm

pacman -S lxsession lxappearance --noconfirm


pacman -S i3-gaps i3status-manjaro i3lock i3exit  --noconfirm

pacman -S xfce4-power-manager xfce4-terminal konsole gnome-terminal  --noconfirm

# config zsh 1 Mar 2021
pacman -S zsh zsh-autosuggestions zsh-completions manjaro-zsh-config zsh-history-substring-search zsh-syntax-highlighting zsh-theme-powerlevel10k --noconfirm 


pacman -S polkit-gnome libgnomekbd gnome-themes-extra gnome-online-accounts gnome-icon-theme-symbolic gnome-icon-theme gnome-desktop gnome-autoar --noconfirm 





sleep 5s 

# update file list and index
updatedb

TODAY=$(date +"%Y-%m-%d_at_%H:%m")

mkdir ~/Documents/zsh_backup_conf
BACKUP_PATH=~/Documents/zsh_backup_conf
# copy the zsh cofig 

#   backup if there is exited zsh config
if [[ -d /usr/share/zsh ]] && [[ -n `ls -A /usr/share/zsh` ]]; then
    mv /usr/share/zsh $BACKUP_PATH/zsh.old_$TODAY
fi 

if [[ -d /usr/share/zsh-theme-powerlevel10k ]] && [[ -n `ls -A /usr/share/zsh-theme-powerlevel10k` ]]; then
    mv /usr/share/zsh-theme-powerlevel10k $BACKUP_PATH/zsh-theme.old_$TODAY
fi

# copy the new zsh config
cp -r ../zsh/zsh /usr/share 
cp -r ../zsh/zsh-theme-powerlevel10k /usr/share


# END OF zsh



if [[ -f /etc/i3status.conf ]]; then
    mv /etc/i3status.conf /etc/i3status.conf.old 
fi
cp i3status.conf /etc/

if [[ -f /usr/share/conky/conky_maia ]]; then
    mv /usr/share/conky/conky_maia /usr/share/conky/conky_maia.old 
fi
cp conky_maia /usr/share/conky/ 

if [[ -f /etc/locale.gen ]]; then
    mv /etc/locale.gen /etc/locale.gen.old 
fi
cp ../locale.gen /etc 


