# My Dotfiles & System Setup

Using [Chezmoi](https://www.chezmoi.io) to handle syncing dotfiles across multiple diverse machines.

[Chezmoi Quick Start](https://www.chezmoi.io/quick-start/)

You'll need to move any files from `/bin` to your `/usr/local/bin`, like `tmux-session`

`sudo ln s /bin/tmux-session /usr/local/bin`

Below are tools and software needed to get a new machine up and running.

## Tools & Software

- Alacritty (terminal emulator)
- Beekeeper-Studio - Database manager (free version)
- Bitwarden - Password Manager
- [Calibre](https://calibre-ebook.com/download) - ebook manager
- Dropbox
- [Figma](https://www.figma.com/downloads/)
- Plex
- Spotify
- VLC
- VSCode
- Dropbox
- Todoist
- Obsidian
- Google Chrome
- FileZilla
- Firefox
  - Install _Gnome Shell Extensions_ for Linux tools
- Private Internet Access VPN

### Command Line Tools

- chezmoi - manage and sync dotfiles
- [atuin](https://atuin.sh/) (very cool shell history sync & search)
- git
- lando (for local Drupal & Wordpress site containers)
- [nvm (install via github)](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)
  - after install, run `nvm install 14 && nvm install 16 && nvm install 18`
- screenfetch
- trash-cli (needed for the `rm` replacement found in `.zshrc`)
- neovim
- youtube-dl
- zsh

### Mac Specific Tools

- Affinity Design, Publisher, Photo (Adobe alternatives)
- Alfred
- Clip Menu
- Disk Inventory X
- [homebrew](https://brew.sh/) - the only thing you need to manage tools & packages on Mac
- ImageOptim
- Xcode

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


# Linux Fresh Install

Install various plugins

```shell
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt clean
sudo apt install git\
screenfetch\
plocate\
tmux\
youtube-dl\
vim\
software-properties-common\
zsh
```

### Install Gnome Tweaks
Use the store.
After installing, use the additional keyboard layouts to swap alt and ctrl, and use caps lock as another escape


### Install Chezmoi
```shell
set GITHUB_USERNAME=jessemutz
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

You'll likely have to replace chezmoi dir with your own. 

```shell
chezmoi cd \
mv chezmoi chezmoi.old \
git clone https://github.com/jessemutz/dotfiles chezmoi \
chezmoi apply
```

### Install oh-my-posh and nerd fonts
```shell
curl -s https://ohmyposh.dev/install.sh | bash -s 
oh-my-posh font install
```
I like "SpaceMono" and "JetBrains Mono"

### Install Neovim

```shell
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

### Install LazyGit
good for neovim

```shell
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### ZSH stuff
to install zsh-autosuggestions, use:
```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### PHP Versions

```shell
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt upgrade
sudo apt install php7.4
sudo apt install php7.4-{fpm,zip,gd,mbstring,curl,xml,bcmath}
sudo apt install php8.1
sudo apt install php8.1-{fpm,zip,gd,mbstring,curl,xml,bcmath}
```

Stop apache so we can use Lando

```shell
sudo systemctl stop apache2
sudo update-rc.d apache2 disable
```

## TMUX

### Regular tmux keybindings

```text
% vertical split
" horizontal split
! break pane into new window
c new window


$ rename session
, rename window

o select next pane
{ swap pane with previous
} swap pane with next
n next window
p previous window
) next session
( previous session
; select previously active pane
l select previously active window

s interactive session & window browser
w interactive window browser

: command prompt
d detach
f search text in open windows

[ copy mode
] paste buffer
# list buffers
- delete buffer
```

## VS Code

Extensions should install automatically when signed in with GitHub account, but the extensions I like are:

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
