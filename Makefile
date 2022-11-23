# + Installation Makefile +
# install every package in packages.txt, font awesome and Iosevka for polybar and jfetch

help:
	cat README.md

install:
	git clone "https://aur.archlinux.org/yay.git"
	cd yay && makepkg -si
	rm -rf yay
	yay -S --noconfirm ttf-font-awesome-5 ttf-font-awesome ttc-iosevka jfetch-git onlyoffice-bin `cat packages.txt | cut -d' ' -f 1`

lockscreen:
	yay -S --noconfirm betterlockscreen
	systemctl enable betterlockscreen@$USER
	betterlockscreen -u .wallpapers/lockscreen.png
