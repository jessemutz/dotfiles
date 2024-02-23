# My Dotfiles & System Setup
Using [Chezmoi](https://www.chezmoi.io) to handle syncing dotfiles across multiple diverse machines.

[Chezmoi Quick Start](https://www.chezmoi.io/quick-start/)

Below are tools and software needed to get a new machine up and running.

## Tools & Software
- Beekeeper-Studio - Database manager (free version)
- Bitwarden - Password Manager
- [Figma](https://www.figma.com/downloads/)
- Plex
- Spotify 
- VLC
- VSCode
- Dropbox
- Todoist
- Joplin - Notes manager
- Clickup
- Google Chrome
- Firefox
  - Install *Gnome Shell Extensions* for Linux tools
- Private Internet Access VPN

### Linux Specific Tools
- CopyQ - Clipboard Manger
- Gnome Tweak Tool - adjust appearance
- Gnome Extensions
  - Dash to panel
    - Settings saved in chezmoi dash-to-panel-settings.txt
    - Requires manual import
  - Open Weather
  - Time++
  - Ubuntu Appindicators
- input-remapper (to remap mouse keys)
  - `sudo apt install input-remapper`
- Solaar - LG Mouse to work with Linux better
- Stacer - system monitoring
- [update-alternatives](https://man7.org/linux/man-pages/man1/update-alternatives.1.html) - I use to switch PHP versions, but can also be used
  - e.g. `sudo update-alternatives --set php /usr/bin/php8.1`

### Command Line Tools
- git
- lando (for local Drupal & Wordpress site containers)
- [nvm (install via github)](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
  - after install, run `nvm install 14 && nvm install 16 && nvm install 18`
- screenfetch
- vim
- youtube-dl
- zsh

## Linux Commands
Install various plugins

```shell
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
sudo apt install php8.1
sudo apt install php8.1-{fpm,json,zip,gd,mbstring,curl,xml,bcmath,dom}
```

Stop apache so we can use Lando 
```shell
sudo systemctl stop apache2
sudo update-rc.d apache2 disable 
```

## VS Code
Extensions should install automatically when signed in, but the extensions I like are:
- Alignment
- Better Align
- Better Comments
- change-case
- Code Spell Checker
- Color Highlight
- Dev Containers
- Docker
- Drupal 8 Snippets
- Drupal 8 Twig Snippets
- Drupal Syntax Highlighting
- Duplicate action
- ESLint
- Even Better TOML
- Figma
- Format Comment
- Git History
- GitHub Themes
- GitLens
- GraphQL
- GraphQL Syntax Highlighting
- HTML CSS Support
- Indented Block Highlighting
- IntelliSense for CSS Class Names in HTML
- isort
- JavaScript Code Snippets
- Liquid
- Live Server
- Material Icon Theme
- Material Theme
- Material Theme Icons
- Multiple Cursor case preserve
- NGINX Configuration
- Night Owl
- One Dark Pro
- Path Intellisense
- PHP Debug
- PHP Intelephense
- PHP Intellisense
- Prettier
- React native Tools
- Remote - SSH
- REST Client
- Sass
- SCSS Formatter
- SCSS IntelliSense
- Sort Lines
- Svelte for VS Code
- TabOut
- TODO Highlight
- Twig