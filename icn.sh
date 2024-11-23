# install ICN NODE
# boro        11        70048c2f1038ab1ebf94b0697eabab06283f0afb4a98db708c85d7646010ab5b
# epyc        33        badcb80e6a16145619b0532affe3b66e52418c28bff8be3aabb16d83eb8162cc
# 4090-1      55        3c6c486003f68d9a0f8b92f637d370083ec7ff6280a6f93681a18653ad2fe215
# 4090-2      77        0992d42cf51a5a8b4fe8ebd64af80dd3eb7dc5ddb4991712592adfbf8aa277cf
# 2-3070-2    99        d107498a19082333bbec96595704156f4562da56857ae6eab99c02492f1fae30
# 2-3070-3    10        522bc426f2a961cfc68e9de7b31e0af1ec9b936cf2dcd8114a0d84007feb5485
# 2-3070-4    102       0xb6a0fadc5a197a6f34601e9524832804c988258dd1b545552f9452b337add5f6
# 2-3070-5    104       0xae06ce52e0c5432327effd3fbbc4e6774e8a50c24880ca92c23984b6431e5e8b
# 2-3070-6    106       0x16b5f7cfb754b630ecbee08aeab1541e5acd667b94b04753fd9eb297a33f2d0d
# 3-3070-1    108       0xe3745215ebaf7b9dc1f7588fe4ed8e1809822381f9b4f1d2061c5664df2649f5
# 3-3070-2    110       0x43c6c5b6ab0f43eb22901ff5a03c54d8f6bb5a0ea04579ea4082ec87cd0cec8f


#!/bin/bash
sudo apt install screen -y
# screen -S icn && curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p badcb80e6a16145619b0532affe3b66e52418c28bff8be3aabb16d83eb8162cc
# screen -dmS icn bash -c "curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p badcb80e6a16145619b0532affe3b66e52418c28bff8be3aabb16d83eb8162cc"
cd / && screen -dmS icn bash -c "curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p 0xae06ce52e0c5432327effd3fbbc4e6774e8a50c24880ca92c23984b6431e5e8b > icn.log 2>&1"
tail -n 20 /icn.log
tail -f /icn.log


cd / && screen -dmS rivalz rivalz run > rivalz.log 2>&1
tail -n 20 /rivalz.log




