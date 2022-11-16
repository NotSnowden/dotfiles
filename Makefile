# + Installation Makefile +
# install every package in packages.txt, font awesome and Iosevka for polybar and jfetch
# install oh my zsh and switch to zsh

help:
	cat README.md

install:
	sudo pacman -S `cat packages.txt | cut -d' ' -f 1`
	git clone "https://aur.archlinux.org/yay.git"
	cd yay && makepkg -si
	rm -rf yay
	yay -S --noconfirm ttf-font-awesome-5 ttf-font-awesome ttc-iosevka jfetch-git onlyoffice-bin

shell:
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	chsh -s $(which zsh)

lockscreen:
	yay -S --noconfirm betterlockscreen
	systemctl enable betterlockscreen@$USER
	betterlockscreen -u .wallpapers/lockscreen.png
