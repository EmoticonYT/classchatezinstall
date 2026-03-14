#!/bin/bash

cd ~

cd classchat

cd data

curl -LO https://github.com/EmoticonYT/classchatezinstall/raw/refs/heads/main/Archive.zip

unzip Archive.zip

killall -9 node

cd ~/classchat

bash startcc.sh

echo "ClassChat Data Backup restored."
