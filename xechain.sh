#!/bin/bash
#wget https://raw.githubusercontent.com/georgevasilyev/zzzz/refs/heads/main/xechain.sh && chmod +x xechain.sh && ./xechain.sh

#cd ~
#sudo apt remove golang-go -y
#sudo rm -rf /usr/local/go
#apt update -y
#wget https://go.dev/dl/go1.21.3.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.21.3.linux-amd64.tar.gz
#echo -e "\nexport PATH=\$PATH:/usr/local/go/bin\nexport GOPATH=\$HOME/goproject\nexport PATH=\$PATH:\$GOPATH/bin" >> ~/.profile
#source ~/.profile
#mkdir -p $HOME/goproject
#apt install git make build-essential -y
#go version

#install miner
mkdir -p /root/xechain/miner
cd /root/xechain/miner
wget https://github.com/XeChain/xeMiner/releases/download/v1.0/linux.zip
unzip linux.zip -d /root/xechain/miner
rm linux.zip
chmod +x ./xeMiner
#performance testing
#./xeMiner -mock -all
#Show OpenCL devices informations
#./xeMiner -info -all

#install node
cd /root/xechain
git clone https://github.com/XeChain/xe-core
#cd xe-core
#make xe

# cd build/bin
# chmod +x xe
# screen -S xe
# ./xe


#Run a xeChain client with mining feature enabled
#./xe -ws -mine -miner.etherbase=0xEc686836f18b36b8Af527cb309394113d0B6D859

#Run the miner
#cd /root/xechain/miner && screen -S xeminer ./xeMiner -mock -all
#The default pool address is ws://127.0.0.1:8546.
