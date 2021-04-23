apt install feh fonts-font-awesome rofi pulseaudio-utils xbacklight alsa-tools  -yy


# keyboard indicator wallpaper 
apt install xxkb nitrogen pavucontrol blueman cmus -yy

apt install lxsession lxappearance zsh -yy



apt install clipit gcc git terminator locate pcmanfm acpi libnotify-bin -yy


# I'm not using shutter now I use flameshot
# add-apt-repository -y -u ppa:linuxuprising/shutter

# apt install shutter -yy

# install by snap 
snap install pa-applet brave sqlitebrowser dbeaver-ce 

apt install flameshot -yy

apt install mlocate -yy && updatedb



# zsh theme
cp -r ../zsh/zsh /usr/share/ 

cp -r ../zsh/zsh-theme-powerlevel10k /usr/share 


# copy the icons 
./file_manager_root.sh 
