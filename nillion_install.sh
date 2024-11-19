#!/bin/bash

# apt install apt-transport-https ca-certificates curl software-properties-common -y
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# может и не надо
# add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && 
# apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
apt install docker.io -y && docker --version
# Устанавливаем Accuser Image
docker pull nillion/verifier:v1.0.1

# Создаем директорию для Accuser
mkdir -p /root/nillion/verifier

# Запускаем контейнер для инициализации Accuser и Регистрации
docker run -v /root/nillion/verifier:/var/tmp nillion/verifier:v1.0.1 initialise

# Копируем Verifier account id

# https://faucet.testnet.nillion.com/

cat /root/nillion/verifier/credentials.json
# копируем приватник

# идем на сайт и привязываем кеплр
# https://verifier.nillion.com/verifier

# Далее запускаем ноду!
screen -S nillion docker run -v /root//nillion/verifier:/var/tmp nillion/verifier:v1.0.1 verify --rpc-endpoint "https://testnet-nillion-rpc.lavenderfive.com"

# ОДНОЙ КОМАНДОЙ !!!!!!!!!
apt install docker.io -y && docker pull nillion/verifier:v1.0.1 && mkdir -p /root/nillion/verifier && docker run -v /root/nillion/verifier:/var/tmp nillion/verifier:v1.0.1 initialise && cat /root/nillion/verifier/credentials.json




