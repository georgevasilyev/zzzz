#!/bin/bash

# обновление
# wget https://raw.githubusercontent.com/georgevasilyev/zzzz/refs/heads/main/blockmesh_update.sh && sudo chmod +x blockmesh_update.sh && ./blockmesh_update.sh
# journalctl -u blockmesh --no-hostname -o cat -n 30
sudo systemctl stop blockmesh
sudo systemctl disable blockmesh
sudo rm /etc/systemd/system/blockmesh.service
sudo systemctl daemon-reload
sleep 1
rm -rf /target
sleep 1

# wget --no-cache -q -O blockmesh.sh https://raw.githubusercontent.com/noxuspace/cryptofortochka/main/blockmesh.sh && sudo chmod +x blockmesh.sh && ./blockmesh.sh
cd /
# wget https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.331/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
# wget https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.342/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
wget https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.347/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
tar -xzvf blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
sleep 1
rm blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
cd target/x86_64-unknown-linux-gnu/release/
# /root/blockmesh/target/x86_64-unknown-linux-gnu/release/blockmesh-cli --email gera.122@mail.ru --password Emzige8672$

# gera.122@mail.ru                    FAR-2060-1
# 9179122122@mail.ru                  FAR-2060-2
# paulmartin0185097@gmail.com          4090-1
# donaldgonzalez5355887@gmail.com      4090-2
# oooavers2018@mail.ru                GRA-2060-5

bash -c "cat <<EOT > /etc/systemd/system/blockmesh.service
[Unit]
Description=BlockMesh CLI Service
After=network.target

[Service]
User=root
ExecStart=/target/x86_64-unknown-linux-gnu/release/blockmesh-cli login --email paulmartin0185097@gmail.com --password Emzige8672$
WorkingDirectory=/target/x86_64-unknown-linux-gnu/release
Restart=always

[Install]
WantedBy=multi-user.target
EOT"


systemctl daemon-reload
sleep 2
systemctl enable blockmesh
systemctl restart blockmesh
journalctl -u blockmesh -f


# journalctl -u blockmesh -n 30
