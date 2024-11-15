#!/bin/bash

# lsb_release -a
# https://raw.githubusercontent.com/georgevasilyev/zzzz/refs/heads/main/sonaric_install.sh
sudo apt install curl git jq build-essential gcc unzip wget lz4 -y
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install nodejs -y

. /etc/os-release
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update
sudo apt-get -y install buildah
``

sh -c "$(curl -fsSL http://get.sonaric.xyz/scripts/install.sh)"


# sonaric points


