# + Installation Makefile +
# install every package in packages.txt, font awesome and Iosevka for polybar and jfetch

help:
	cat README.md

install:
	sudo pacman -S `cat packages.txt | cut -d' ' -f 1`
	git clone "https://aur.archlinux.org/yay.git"
	cd yay && makepkg -si
	rm -rf yay
	yay -S --noconfirm ttf-font-awesome-5 ttf-font-awesome ttc-iosevka jfetch-git onlyoffice-bin xdm
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall

lockscreen:
	yay -S --noconfirm betterlockscreen
	systemctl enable betterlockscreen@$USER
	betterlockscreen -u .wallpapers/lockscreen.png
