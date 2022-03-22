# ✨ My terminal ✨
*Update : 22/03/2022*

## ⚡️ Informations
**Operating System :** Kaisen-Linux (Debian Based)

**Terminal Client :** [Tabby] (https://tabby.sh/)

**Text Editor :** [Micro] (https://micro-editor.github.io/)

## 📦️ Packages

 - [ad] (https://github.com/tanrax/terminal-AdvancedNewFile) : Create folders and files easily
 - [atuin] (https://github.com/ellie/atuin) : Manage your commands history
 - [bat] (https://github.com/sharkdp/bat) : Better `cat`
 - [btop] (https://github.com/aristocratos/btop) : Better `htop`
 - [cheat] (https://github.com/cheat/cheat) : Better `man`, all your cheatsheet in your terminal (Check [PAPAMICA/cheatsheets] (https://github.com/PAPAMICA/cheatsheets))
 - [direnv] (https://direnv.net/) : Set up environment variables based on the folder
 - [duf] (https://github.com/muesli/duf) : Better `df -h`with graphics
 - [exa] (https://the.exa.website/) : Improving the `ls` command
 - [fd] (https://github.com/sharkdp/fd) : Boost the `find` command
 - [fuck] (https://github.com/nvbn/thefuck) : Fuck! I missed my command ! 
 - [ncdu] (https://dev.yorhel.nl/ncdu) : Display your storage simply and graphically
 - [oh-my-zsh] (https://ohmyz.sh/) : Making zsh pretty
 - [power10k] (https://github.com/romkatv/powerlevel10k) : Customize your command prompt to perfection
 - [progress] https://github.com/Xfennec/progress) : Monitor the progress of multiple commands
 - [ripgrep] (https://github.com/BurntSushi/ripgrep) : Better `grep`
 - [z] (https://github.com/rupa/z) : Get to your folders as quickly as possible
 - [zsh] (https://www.zsh.org/) : More intuitive than bash
 - [zsh-autosuggestions] (https://github.com/zsh-users/zsh-autosuggestions) : Like fish
 - [zsh-syntax-highlighting] (https://github.com/zsh-users/zsh-syntax-highlighting) : Like fish too


## ⚙️ Install script for Debian / Ubuntu server

```bash
bash -c "$(curl -s https://raw.githubusercontent.com/Lucroz94/terminal/main/server_utils.sh)"
```

If you want an oneliner and you don't have curl installed :
```bash
apt update && apt install -y curl && bash -c "$(curl -s https://raw.githubusercontent.com/Lucroz94/terminal/main/server_utils.sh)"
```

With --verbose :
```bash
apt update && apt install -y curl && curl -Ls https://raw.githubusercontent.com/Lucroz94/terminal/main/server_utils.sh | bash -s -- verbose
```
