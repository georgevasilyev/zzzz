# wget --no-cache -q -O blockmesh.sh https://raw.githubusercontent.com/noxuspace/cryptofortochka/main/blockmesh.sh && sudo chmod +x blockmesh.sh && ./blockmesh.sh
cd
cd ..
wget https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.331/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
tar -xzvf blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
sleep 1
rm blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
cd target/x86_64-unknown-linux-gnu/release/
screen -S blockmesh 
# /root/blockmesh/target/x86_64-unknown-linux-gnu/release/blockmesh-cli --email gera.122@mail.ru --password Emzige8672$


bash -c "cat <<EOT > /etc/systemd/system/blockmesh.service
[Unit]
Description=BlockMesh CLI Service
After=network.target

[Service]
User=$USERNAME
ExecStart=/target/x86_64-unknown-linux-gnu/release/blockmesh-cli login --email 9179122122@mail.ru --password Emzige8672$
WorkingDirectory=/target/x86_64-unknown-linux-gnu/release
Restart=always

[Install]
WantedBy=multi-user.target
EOT"

sudo systemctl daemon-reload
sudo systemctl enable blockmesh
sudo systemctl restart blockmesh

sudo journalctl -u blockmesh -f
sudo journalctl -u blockmesh -n 30
