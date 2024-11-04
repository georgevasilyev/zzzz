# wget --no-cache -q -O blockmesh.sh https://raw.githubusercontent.com/noxuspace/cryptofortochka/main/blockmesh.sh && sudo chmod +x blockmesh.sh && ./blockmesh.sh
mkdir /root/blockmesh && cd /root/blockmesh
wget https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.331/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
tar -xzvf blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
sleep 1
rm blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz
cd target/x86_64-unknown-linux-gnu/release/
screen -S blockmesh 
# /root/blockmesh/target/x86_64-unknown-linux-gnu/release/blockmesh-cli --email gera.122@mail.ru --password Emzige8672$
