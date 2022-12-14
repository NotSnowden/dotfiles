# DESCRIPTION

here you will find everything you need to reproduce my bspwm arch installation.


# INSTALLATION

clone the repository
```shell
git clone https://github.com/notsnowden/dotfiles.git
```

install every package in packages.txt and other packages from AUR (you can edit them from the makefile)
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
chmod +x ~/.xsession ~/.config/sxhkd/sxhkdrc ~/.config/bspwm/bspwmrc
```

download oh my zsh and switch to zsh
```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# RESULT

![Alt text](/../screenshots/home.png?raw=true "Desktop")
![Alt text](/../screenshots/lockscreen.png?raw=true "Lockscreen")
