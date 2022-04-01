# ✨ My terminal ✨
*Update : 01/04/2022*

## ⚡️ Informations

**Operating System :** Kaisen-Linux (Debian Based : https://kaisenlinux.org/)

**Terminal Client :** [Tabby] (https://tabby.sh/)

**Text Editor :** [Micro] (https://micro-editor.github.io/)

## 📦️ Packages for the server_utils.sh

 - [ad] (https://github.com/tanrax/terminal-AdvancedNewFile) : Create folders and files easily
 - [atuin] (https://github.com/ellie/atuin) : Manage your commands history
 - [bat] (https://github.com/sharkdp/bat) : Better `cat`
 - [btop] (https://github.com/aristocratos/btop) : Better `htop`
 - [cheat] (https://github.com/cheat/cheat) : Better `man`, all your cheatsheet in your terminal (Check https://github.com/Lucroz94/cheatsheets)
 - [direnv] (https://direnv.net/) : Set up environment variables based on the folder
 - [duf] (https://github.com/muesli/duf) : Better `df -h`with graphics
 - [exa] (https://the.exa.website/) : Improving the `ls` command
 - [fd] (https://github.com/sharkdp/fd) : Boost the `find` command
 - [fuck] (https://github.com/nvbn/thefuck) : Fuck! I missed my command !
 - [git] (https://git-scm.com/ : version control system 
 - [Micro] (https://micro-editor.github.io/) : Text Editor like Nano/VIM
 - [ncdu] (https://dev.yorhel.nl/ncdu) : Display your storage simply and graphically
 - [neofetch] (https://github.com/dylanaraps/neofetch) : nice MOTD
 - [oh-my-zsh] (https://ohmyz.sh/) : Making zsh pretty
 - [power10k] (https://github.com/romkatv/powerlevel10k) : Customize your command prompt to perfection
 - [progress] https://github.com/Xfennec/progress) : Monitor the progress of multiple commands
 - [ripgrep] (https://github.com/BurntSushi/ripgrep) : Better `grep`
 - [z] (https://github.com/rupa/z) : Get to your folders as quickly as possible
 - [zsh] (https://www.zsh.org/) : More intuitive than bash
 - [zsh-autosuggestions] (https://github.com/zsh-users/zsh-autosuggestions) : Like fish
 - [zsh-syntax-highlighting] (https://github.com/zsh-users/zsh-syntax-highlighting) : Like fish too


## ⚙️ Install script for Debian / Ubuntu server

If you want an oneliner and you don't have curl installed, with --verbose and --motd and --all-users (arguments can be removed) :

```bash
apt update && apt install -y curl && curl -Ls https://raw.githubusercontent.com/Lucroz94/terminal/main/server_utils.sh | bash -s -- --verbose --motd --all-users
```

## ⚙️ Install script for Kaisen-Linux (WIP)

With --verbose and --all-users :

```bash
apt update && apt install -y curl && curl -Ls https://raw.githubusercontent.com/Lucroz94/terminal/main/kaisen_linux.sh | bash -s -- --verbose --all-users
```