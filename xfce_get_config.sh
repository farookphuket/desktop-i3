#!/bin/bash


# copy config for xfce


cp -r zsh/powerlevel10k ~/

cp zsh/.p10k.zsh ~/
cp zsh/.zshrc ~/

chsh -s /usr/bin/zsh 

echo "--------------------Success config file -----------------"
echo " your shell is $SHELL "
echo "if your shell is not zsh please logout "
echo " the config file has been copied! "

sleep 5s
exit
