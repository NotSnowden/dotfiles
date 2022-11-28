# DESCRIPTION

here you will find everything you need to reproduce my bspwm arch installation.


# INSTALLATION

clone the repository
```shell
git clone https://github.com/notsnowden/dotfiles.git
```

install every package in packages.txt and others packages from AUR (you can edit them from the makefile)
```shell
make install
```

after that, move Xresources (xdm's configuration file) in `/etc/X11/xdm/` \
if you're using systemd as init system enable xdm service
```shell
sudo mv Xresources /etc/X11/xdm/
sudo systemctl enable xdm
```
don't forget to make `.xsession`, `sxhkdrc` and `bspwmrc` executable  with 
```shell
chmod +x name_of_the_file
```

install and enable betterlockscreen. the configuration file is located in `.config/betterlockscreenrc`.
this will set `.wallpapers/lockscreen.png` as lockscreen wallpaper
```shell
make lockscreen
```

download oh my zsh and switch to zsh
```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# RESULT

![Alt text](/../screenshots/setup.png?raw=true "Desktop")
![Alt text](/../screenshots/lockscreen.png?raw=true "Lockscreen")
