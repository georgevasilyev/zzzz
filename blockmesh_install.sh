# wget --no-cache -q -O blockmesh.sh https://raw.githubusercontent.com/noxuspace/cryptofortochka/main/blockmesh.sh && sudo chmod +x blockmesh.sh && ./blockmesh.sh
cd /
wget https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.331/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
tar -xzvf blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
sleep 1
rm blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
cd target/x86_64-unknown-linux-gnu/release/
# /root/blockmesh/target/x86_64-unknown-linux-gnu/release/blockmesh-cli --email gera.122@mail.ru --password Emzige8672$


bash -c "cat <<EOT > /etc/systemd/system/blockmesh.service
[Unit]
Description=BlockMesh CLI Service
After=network.target

[Service]
User=root
ExecStart=/target/x86_64-unknown-linux-gnu/release/blockmesh-cli login --email donaldgonzalez5355887@gmail.com --password Emzige8672$
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


journalctl -u blockmesh -n 30


# обновление 
