# DESCRIPTION

here you will find everything you need to reproduce my bspwm arch installation.

install every package in packages.txt
```shell
make install
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
