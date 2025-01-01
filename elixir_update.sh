# testnet update command 
docker kill elixir
docker rm elixir
docker pull elixirprotocol/validator --platform linux/amd64
docker run --env-file <path to env file> --platform linux/amd64 --name elixir -p 17690:17690 elixirprotocol/validator

# hiveOS update command
docker kill elixir-mainnet && docker rm elixir-mainnet && docker pull elixirprotocol/validator --platform linux/amd64 && docker run --name elixir-mainnet --env-file /root/validator.env --platform linux/amd64 -p 17690:17690 --restart unless-stopped elixirprotocol/validator
