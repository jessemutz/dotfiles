# dotfiles
My personal dotfiles for Linux and Mac

# Requirements
- git
- vim
- OhMyZSH
- nvm
- docker-ce
- Powerline fonts

## App Store Downloads
- Bitwarden
- VS Code 
- CopyQ
- DBeaver-ce
- Discord 
- Figma
- Plex-desktop
- qBittorrent
- Solaar
- Spotify 
- Gnome Tweak Tool
- VLC

## Tools to download from internet 
- Dropbox 
- ToDoist 
- Obsidian
- Joplin
- Google Chrome
- Private Internet Access VPN 
- [Lando](https://lando.dev/download/)
- (from firefox) gnome shell extensions 
	- Dash to panel 
	- Open Weather 
	- Time++
- [Composer](https://getcomposer.org/download/)

## Command Line installations
Various plugins
``` shell
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt clean
sudo apt install git\
screenfetch\
plocate\
youtube-dl\
vim\
software-properties-common\
zsh
```

PHP versions and version switcher
```shell
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt upgrade
sudo apt install php7.4
sudo apt install php7.4-{fpm,json,zip,gd,mbstring,curl,xml,bcmath,dom}
```

To pick PHP version, use
```
sudo update-alternatives --set php /usr/bin/php8.1
```

Stop apache so we can use Lando 
```shell
sudo systemctl stop apache2
sudo update-rc.d apache2 disable 
```

### Get NPM and Nodejs working via NVM (node version manager)
Install via [NVM github repo](https://github.com/nvm-sh/nvm)
Restart terminal
verify it works by `command -v nvm`
```shell
# Install build tools 
sudo apt install build-essential
# Install apt-repository for specific versions of python
sudo add-apt-repository ppa:deadsnakes/ppa
# Install python 3.9 & compile tool
sudo apt install python3.9
sudo apt install python3.9-distutils
# List nvm versions 
nvm ls-remote
# Finally, the gulp files require node 14.16.1. This takes a bit
nvm install v14.16.1
# Check it works 
node -v # should be v14.16.1
npm -v  # should be 6.14.12 through 6.14.18
```
