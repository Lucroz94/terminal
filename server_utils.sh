#!/bin/bash

# Check if Debian / Ubuntu
if [ -x "$(command -v apt-get)" ]; then
    :
else
    echo "This script is only compatible with Debian and Ubuntu."
    exit
fi

# Update System
echo ""
echo "-- Update  --"
apt-get update > /dev/null 2> /dev/null
UPGRADE=$(apt update 2>/dev/null | tail -1)
echo " ℹ️  $UPGRADE"




# Installation
## Requierements
apt_install () {
    apt-get install -y $1 > /dev/null 2> /dev/null
    if [ $? -eq 0 ]; then
        echo "   ($i/9) ✅ $1"
    else
        echo "   ($i/9) ❌ $1"
    fi
}
echo ""
echo "-- Requirements --"
echo " 🤖 Installing $1 ..."
PACKAGES="git curl wget gzip lsb-release locales pip make bzip2"
i=0
for PACKAGE in $PACKAGES; do
    i=$((i+1))
    apt_install $PACKAGE
done
echo " ✅ All requirements have been installed  !"


## Applications
app_install () {
    echo ""
    echo "-- $app --"
    if [ -x "$(command -v $app)" ]; then
        echo " ✅ $app is already installed !"
    else
        echo " 🤖 Installing $app ..."
        eval "$install"
        if [ $? -eq 0 ]; then
            if [ -n "$zshrc" ]; then
                echo ''  >> ~/.zshrc
                echo "# $app" >> ~/.zshrc
                echo "$zshrc" >> ~/.zshrc
                echo " ✅ .zshrc updated !"
            fi
            echo " ✅ $app have been installed !"
        else
            echo " ❌ $app can't be installed !"
        fi
        
    fi

}

## zsh
app='zsh'
install='apt-get install -y zsh > /dev/null 2> /dev/null && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended > /dev/null 2> /dev/null && \
sed -i -e "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME="agnoster"/g" ~/.zshrc > /dev/null 2> /dev/null'
zshrc=''
app_install $app $install $zshrc

## micro
app='micro'
install='su - root -c "cd /usr/bin; wget -O- https://getmic.ro | GETMICRO_REGISTER=y sh; cd ~" > /dev/null 2> /dev/null'
zshrc=''
app_install $app $install $zshrc

## atuin
app='atuin'
install='bash -c "$(curl -s https://raw.githubusercontent.com/ellie/atuin/main/install.sh)" > /dev/null 2> /dev/null && \
atuin import auto > /dev/null 2> /dev/null'
zshrc='eval "$(atuin init zsh)"'
app_install $app $install $zshrc

## ad
app='ad'
install='pip3 install advance-touch > /dev/null 2> /dev/null'
zshrc='alias add="python3 ~/Library/Python/3.9/lib/python/site-packages/advance_touch.py"'
app_install $app $install $zshrc

## bat
app='bat'
install='apt-get install -y bat > /dev/null 2> /dev/null'
zshrc='alias cat="batcat"
alias bat="batcat"'
app_install $app $install $zshrc

## btop
app='btop'
install='mkdir btop && cd btop && \
curl -s https://api.github.com/repos/aristocratos/btop/releases/latest \
| grep "browser_download_url.*btop-x86_64-linux-musl.tbz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - && \
tar -xf btop-x86_64-linux-musl.tbz > /dev/null 2> /dev/null && \
make install > /dev/null 2> /dev/null && cd .. && rm -rf btop'
zshrc='alias top="btop --utf-force"
alias btop="btop --utf-force"
alias htop="btop --utf-force"'
app_install $app $install $zshrc

## cheat
app='cheat'
install='curl -s https://api.github.com/repos/cheat/cheat/releases/latest \
| grep "browser_download_url.*cheat-linux-amd64.gz" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - && \chdea
gzip -d cheat-linux-amd64.gz > /dev/null 2> /dev/null && \
chmod +x cheat-linux-amd64 && mv cheat-linux-amd64 /usr/local/bin/cheat && rm -rf cheat-linux-amd64* && \
git clone https://github.com/PAPAMICA/cheatsheets.git ~/.config/cheat/cheatsheets/papamica/ && \
curl -s "https://raw.githubusercontent.com/PAPAMICA/terminal/main/cheat_config" ~/.config/cheat/conf.yml'
zshrc='alias "?"="cheat"
alias "??"="cheat perso"'
app_install $app $install $zshrc

## duf
app='duf'
install='curl -s https://api.github.com/repos/muesli/duf/releases/latest \
| grep "browser_download_url.*amd64.deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - && \
dpkg -i duf*.deb > /dev/null 2> /dev/null && rm duf*.deb > /dev/null 2> /dev/null'
zshrc=''
app_install $app $install $zshrc

## exa
app='exa'
install='apt install -y exa > /dev/null 2> /dev/null'
zshrc='alias ls="exa -a --icons"         # short, multi-line
alias ll="exa -1a --icons"        # list, 1 per line
alias ld="ll"             # ^^^, NOTE: Trying to move to this for alternate hand commands
alias la="exa -la --icons"        # list with info
alias lt="exa -a --tree --icons --level=2"        # list with tree level 2
alias ltf="exa -a --tree --icons"        # list with tree
alias lat="exa -la --tree --icons"        # list with info and tree'
app_install $app $install $zshrc


## fd
app='fd'
install='apt install -y fd-find > /dev/null 2> /dev/null'
zshrc='alias locate="fd"
alias find="fd"'
app_install $app $install $zshrc

## z
app='z'
install='git clone https://github.com/rupa/z.git /bin/z > /dev/null 2> /dev/null'
zshrc='. /bin/z/z.sh'
app_install $app $install $zshrc

## fuck
app='fuck'
install='pip3 install thefuck  > /dev/null 2> /dev/null'
zshrc='eval $(thefuck --alias)'
app_install $app $install $zshrc

## zsh_autocompletion
app='zsh_autocompletion'
install='git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions > /dev/null 2> /dev/null'
zshrc='source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080"'
app_install $app $install $zshrc

localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
zsh