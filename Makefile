# + Installation Makefile +
# install every package in packages.txt and also oh-my-zsh cuz it's fking cool

help:
	cat README.md

install:
	sudo pacman -S `cat packages.txt | cut -d' ' -f 1`
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	chsh -s $(which zsh)
