#!/bin/bash
echo -e "\e[1m\e[32m1. Updating dependencies... \e[0m"
sudo apt-get update

echo -e "\e[1m\e[32m2. Installing required dependencies... \e[0m"
sudo apt install jq -y
sudo apt install python3-pip -y
sudo pip install yq

echo -e "\e[1m\e[32m5. Downloading Node Monitoring config files ... \e[0m"
cd $HOME
rm -rf cosmos_node_monitoring
git clone https://github.com/Mhieu14/cosmos_node_monitoring.git

chmod +x $HOME/cosmos_node_monitoring/add_validator.sh
