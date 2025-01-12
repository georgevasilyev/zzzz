#!/bin/bash


# wget https://raw.githubusercontent.com/georgevasilyev/zzzz/refs/heads/main/xechain.sh && chmod +x xechain.sh && ./xechain.sh
cd ~
sudo apt remove golang-go -y
sudo rm -rf /usr/local/go
apt update -y

wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.3.linux-amd64.tar.gz
echo -e "\nexport PATH=\$PATH:/usr/local/go/bin\nexport GOPATH=\$HOME/goproject\nexport PATH=\$PATH:\$GOPATH/bin" >> ~/.profile
source ~/.profile
mkdir -p $HOME/goproject
apt install git make build-essential -y
go version


cd ~
wget https://github.com/XeChain/xeMiner/releases/download/v1.0/linux.zip
mkdir -p ~/xechain/miner
unzip linux.zip -d ~/xechain/miner
rm linux.zip
cd /root/xechain/miner



# cd /
# git clone https://github.com/XeChain/xe-core
# cd xe-core
# make xe

# cd build/bin
# chmod +x xe
# screen -S xe
# ./xe
