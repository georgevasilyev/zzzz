# install ICN NODE
# boro        11      70048c2f1038ab1ebf94b0697eabab06283f0afb4a98db708c85d7646010ab5b
# epyc        33      badcb80e6a16145619b0532affe3b66e52418c28bff8be3aabb16d83eb8162cc
# 4090-1      55      3c6c486003f68d9a0f8b92f637d370083ec7ff6280a6f93681a18653ad2fe215
# 4090-2      77      0992d42cf51a5a8b4fe8ebd64af80dd3eb7dc5ddb4991712592adfbf8aa277cf
# 2-3070-2    99      d107498a19082333bbec96595704156f4562da56857ae6eab99c02492f1fae30
# 2-3070-3    10      522bc426f2a961cfc68e9de7b31e0af1ec9b936cf2dcd8114a0d84007feb5485


#!/bin/bash
sudo apt install screen -y
# screen -S icn && curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p badcb80e6a16145619b0532affe3b66e52418c28bff8be3aabb16d83eb8162cc
# screen -dmS icn bash -c "curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p badcb80e6a16145619b0532affe3b66e52418c28bff8be3aabb16d83eb8162cc"
cd / && screen -dmS icn bash -c "curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p 70048c2f1038ab1ebf94b0697eabab06283f0afb4a98db708c85d7646010ab5b > icn.log 2>&1"
tail -n 20 /icn.log




