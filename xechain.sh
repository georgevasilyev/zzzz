#!/bin/bash


# wget https://raw.githubusercontent.com/georgevasilyev/zzzz/refs/heads/main/xechain.sh && sudo chmod +x xechain.sh && /.xechain.sh
sudo apt remove golang-go -y
sudo rm -rf /usr/local/go
apt update -y

wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.3.linux-amd64.tar.gz
echo -e "\nexport PATH=\$PATH:/usr/local/go/bin\nexport GOPATH=\$HOME/goproject\nexport PATH=\$PATH:\$GOPATH/bin" >> ~/.profile
source ~/.profile
mkdir $HOME/goproject && go version



apt install git make build-essential -y


# cd /
# git clone https://github.com/XeChain/xe-core
# cd xe-core
# make xe

# cd build/bin
# chmod +x xe
# screen -S xe
# ./xe