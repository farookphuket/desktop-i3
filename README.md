# desktop-i3


#   I just start using manjaro-i3 on 25-jan-2021

>   dear friends I am just very tired of config my custom i3wm on manjaro xfce 
>   so I just move to manjaro-i3 and will stick with this until I know 
>   how to use&config dwm (up until now I still cannot use dwm)




<br />



#   Where to put the config file ONLY IF YOU USE MANJARO-I3 x

##  !BEFORE YOU COPY AND DO THING DO THIS NOW

>   just incase thing happen or you maybe do not like my config 
>   so that you still have you `.old` config back by just remove .old from the file
>   then you will be fine 
>   open your terminal type(OR COPY AND PASTE) 
>   `sudo cp /etc/i3status.conf /etc/i3status.conf.old`   

>   STILL in terminal type (OR COPY AND PASTE)
>   `cp ~/.i3/config ~/.i3/config.old` 
   


>   after clone this repo make sue that you run 
>   `cd desktop-i3/manjaro-i3 ` 
>   otherwise you cannot run the below command


>   the file `/manjaro-i3/config` will go to your ~/.i3
>   by type (OR COPY AND PASTE) the below command
>   ` sudo cp i3status.conf  /etc/i3status.conf `


>   file `/manjaro-i3/config` will got to ~/.i3/
>   by type (OR COPY AND PASTE) the below command
>   ` cp   config ~/.i3/config `





##  Last update on 26 Jan 2021


>   my i3wm config on my desktop
>   dear friends if you are going to copy this repo please make sure that you're know
>   what the fuck you're doing anotherwise you will end-up messed your system
>   please respect to the fact that your computer and mine were different!
>   I don't know what you already put in your system so that's why I cannot tell you if this config will work on yours.


>   I've print the list of all the program that I install on my system if you want to have a look



<br />




##  file name & Date:





No.     |    OS   |file name       | date
--- |  ---|  --- |   --- |
|   1   |  manjaro xfce   |  manjaro20_program_list.txt     |    3-Dec-2020
|   2   |  manjaro xfce   |  my_app_install_list_6-dec-2020.txt  |   5-Dec-2020
|   3   |  manjaro xfce   |  manjaro20-2_program_list_7-dec-2020.txt |   7-Dec-2020
|   4   |  manjaro xfce   |  my_app_list_6-Jan-2021.txt    |  6-Jan-2021
|   5   |  manjaro i3   |  /manjari-i3/app_list_26-jan-2021.txt    |  26-Jan-2021





<br />


##  3 Feb 2021 Manjaro ONLY! 
>   the file "install_my_app.sh" is the program that I mainly use and install 
>   every time so if your clean install and you want to install it too 
>   now make sure that you are in the directory "desktop-i3" that you just 
>   clone if you do so you can just simply run "sudo ./" in your terminal
>   so all the program will be install as you expect.








##  31 Jan 2021 

> there is not easy for me to find a good font for myself but "twlg" is the best 
> font for me so I download it from `https://aur.archlinux.org/packages/fonts-tlwg/`
> today (31 Jan 2021) now I am a happy boy







<br />

##  30 Jan 2021 

>   install manjaro kde on my laptop as it is "no sound" when I install 
>   manjaro-i3 on my asus laptop so just finish up today I spend the whole day
>   just to learn how can I set i3wm to be in the way that I want on my laptop
>   the config file will be in `laptop-i3/` only 3 file `config`,`i3status.conf`
>   and `update-cmus-library.sh` 
>   so I learn more about i3wm now
>   I HAVE A GOOD DAY!








<br />

# 28 Jan 2021 where is the conky config file 

> the conky config file for manjaro i3(the one I use) is live in the path
> `/usr/share/conky/conky_maia` what I have edit is just change the font-size
> and move down just a little bit to edit this file `sudo vim /usr/share/conky/conky_maia`


[conky_maia]:https://i.ibb.co/x1FGRjY/2021-01-28-conky.png
![conky config][conky_maia]






<br />





---



#   my desktop system info 6 Dec 2020

>   note : this message has create on 6 dec 2020 as I am running "Manjaro 20 Xfce"
>   my desktop doesn't have "background transparent" as I can't find the way to fix it
>   so I just having a plain to install manjaro-kde soon



>   I just got the solution from `https://forum.manjaro.org/t/compton-in-manjaro-i3-not-working-solved/32105/5`
>   now my background transparent is working what I did was copy the picom config file to .config 
>   I ran `cp /etc/xdg/picom.conf ~/.config` at the line `opacity-rule = ["85:class_g= 'xfce-terminal'"];`
>   in my `~/.config/i3/config` I put `exec_always --no-startup-id picom --experimental-backends` the press `$Mod+r`
>   that's is now I can set the opacity of my console Wola!!




[terminal_bg_transparent]:https://i.ibb.co/6tYHhdW/2020-12-06-bg-transparent-terminal.png

![terminal background transparent][terminal_bg_transparent]








<br />

[my_sys_info]:https://i.ibb.co/FqvzLFC/my-desktop-pc-dec2020.png

![my hardware system info][my_sys_info]











<br />





#   Ranger image preview

>   have you install ueberzug? if not do it! on my manjaro I ran ` sudo pip3 install ueberzug ` that's all
>   go to `https://memotut.com/the-combination-of-cli-image-viewer-%C3%BCberzug-and-ranger-is-very-convenient-d7fd3/`

>   to see how to on 'ubuntu'




<br />

[ranger_image_preview]:https://i.ibb.co/ScbSBCr/ranger-image-preview.png

![image preview in ranger][ranger_image_preview]







<br />


#   vim floating window for fzf

>   this config is in my vim config so run  `git clone https://github.com/farookphuket/far_vimrc.git `
>   in your terminal if you need this config.



<br />

[vim_floating_fzf]:https://i.ibb.co/0YDZj2k/float-window.png
![vim fzf floating window ][vim_floating_fzf]









<br />

#   moc player

>   this is the best music for me now


[moc_player]:https://i.ibb.co/pvcpyPb/mocp-player.png
![music player moc][moc_player]




<br />






---

#   new config copy


>   in your terminal run ` git clone https://github.com/addy-dclxvi/i3-starterpack.git && cp -a i3-starterpack/. ~  `

>   now run `git clone https://github.com/farookphuket/desktop-i3.git ` to clone this repo to your machine


>   what you have to do is config it the way you want it to be.






#   What I've done OR What i have learn 


>   I just have to re-install manjaro on 5-Jan-2021 because I cannot boot my system after update
>   the system so I have to re-install   


<br />















--- 

#   27 Jan 2021 Hello xxkb keyboard layout


>   keyboard indicator never show up for me since I start using i3wm 
>   now is here what I did was I install the program call xxkb 
>   by run the command `sudo pacman -S xxkb` 
>   then I create the config file in home directory `touch ~/.xxkbrc` 
>   to put the following code in the file  type `vim ~/.xxkbrc`
>   then copy the code below paste into file .xxkbrc
>   by now I don't have the ".xmp" file for the flag of the language label
>   but I did create the folder in .config using the command `mkdir ~/.config/xxkb`


```
  
  XXkb.image.path: /home/farook/.config/xxkb
  
  XXkb.group.base: 1
  XXkb.group.alt: 2
  
  
  XXkb.mainwindow.type: tray
  XXkb.mainwindow.enable: yes
  XXkb.mainwindow.appicon: yes
  XXkb.mainwindow.border.width: 1
  XXkb.mainwindow.label.enable: yes
  XXkb.mainwindow.label.background: black
  XXkb.mainwindow.label.foreground: white
  XXkb.mainwindow.label.font: SourceCodeVariable 14
  XXkb.mainwindow.border.color: white
  XXkb.mainwindow.geometry: 20x20+0+0
  XXkb.mainwindow.image.1: us.xpm
  XXkb.mainwindow.image.2: th.xpm
  XXkb.mainwindow.image.3:
  XXkb.mainwindow.image.4:
  XXkb.mainwindow._delete: no
  
  XXkb.button.enable: no
  
  XXkb.controls.focusout: no
  XXkb.controls.two_state: no
  XXkb.controls.add_when_start: yes
  XXkb.controls.add_when_create: yes
  XXkb.controls.add_when_change: no



```





##  Add code to your i3 config file 

>   open your terminal run `vim ~/.i3/config` 
>   in "manjaro-i3" will be in this path it's your i3 config file


```

exec_always setxkbmap -model pc105 -layout "us,th" -option 'grp:alt_shift_toggle'
exec_always --no-startup-id xxkb


```




##  make sure that you have a locale like this 

>   in manjaro setting 

[locale_setting]:https://i.ibb.co/Wyz585K/2021-01-27-locale-setting.png

![locale setting manjaro][locale_setting]








# the result will be like this


[kb_layout]:https://i.ibb.co/jDd1RWL/2021-01-27-keybord-layout.png

![keybord layout ][kb_layout]


<br />



# my best rhythmbox replacement is Cmus 26 Jan 2021

> I have a very hard time tried to find the good enough music player 
> for rhythmbox my belove music player of all time is now "cmus"


[cmus_player]:https://i.ibb.co/svbfBpY/2021-01-27-cmus-best-music-player.png

![cmus music player][cmus_player]






<br />

---


## Get rid of fish greeting message 23 Jan 2021


1. just install fish and the first thing I try to do is to get rid of the welcome message what I did was easy enough by 3 step

STEP ONE "CREATE AN EMPTY FILE": create an empty file by run command (copy and paste to your terminal) ` touch ~/.config/fish/functions/fish_greeting.fish ` 
(if you don't have the folder functions just create by run `mkdir ~/.config/fish/functions` then now you can create the file 
`touch ~/.config/fish/functions/fish_greeting.fish`)

<br />

STEP TWO "run command" : now run the command in your terminal (Copy and paste to your terminal)

```

function fish_greeting
end

```

hit enter then copy and paste 

```
funcsave fish_greeting

```


<br />

STEP THREE : run the command in your terminal(COPY AND PASTE) 

```

set --universal fish_greeting 

``` 



hit enter then logout now when you log back and open terminal you're no longer see "fish welcome screen" 





--- 

-   Date 6 Jan 2021 
1.  picom not working I just remove the compton.conf by using command 
"rm -rf ~/.config/compton.conf" so now I can have a transparent background 




---

-   Date 7 Dec 2020
1.  Added and resize wallpaper the wallpaper I download from `https://www.opendesktop.org/browse/cat/299/order/latest/`
if you want more go ahead  and visit the website.



<br />

[download_wallpaper]:https://i.ibb.co/YbCQvnY/get-wallpaper.png
![download wallpaper][download_wallpaper]




<br />

---

-   date 6 Dec 2020

1.  today my terminal background is comming back to transparent again 




2.  to update app it is more easy just to run `sudo pamac update`




3.  I just set the shoe time to 12 hour(to me I like 12 hour display instead or 24 hour)
 the code is `format_time = " %a %-d %b %l:%M:%S %P"` in `~/.config/i3status/config` file
 to see what's your flavor time display just simplay type `date --help` in your terminal











---


-   date 5 Dec 2020

1.  install `rofi-wifi-menu` and set the key to **$Mod+w** for select wifi




---


-   date 2 Dc 2020
1.  just set-up new manjaro 20 on my desktop and config the i3wm in the way I want to





<br />


#   The key combination

-   **Mod+Shift+q** to close (kill the window).
-   **Mod+f1** to run brave
-   **Mod+f2** to run firefox
-   **Mod+f3** to run google-chrome
-   **Mod+f4** to run chromium
-   **Mod+b** to run feh ,feh will open the picture in the folder `~/Pictures/Wallpapers` so yeah you must have the folder `Wallpapers` or just change the it

-   **Mod+F2** to run firefox
-   **Mod+m** run mocp [[if your moc not play the song you should run ` mocp `
command in your terminal to see if what will show in your terminal window moc is very easy
command music player program to use if you want to help simply press `h`
]]


-   **Mod+c** to run flameshot in tray or you can press `PrintScreen` to select area to capture








-   **Mod+d**   to run dmenu to show program list






<br />


-   **Mod+w**   to run `rofi-wifi-menu` to select 'wifi network'



[rofi-wifi-menu]:https://i.ibb.co/Kq0FRCy/rofi-wifi-menu-5-dec-2020.png
![wifi scan menu][rofi-wifi-menu]








<br />


[dmenu_1]:https://i.ibb.co/r35jV22/dmenu-rufi.png
![dmenu float][dmenu_1]

<br />







-   **Mod+Shift+d** to run program

[dmenu_2]:https://i.ibb.co/94RKX44/rufi-menu-top.png
![dmenu 2][dmenu_2]


<br />


-   **Mod+Shift+f** to run finder I can't make this working so far :-C Hmmm...





-   **Mod+q** to quit out from i3wm session


##  Log screen

-   **Mod+l**

