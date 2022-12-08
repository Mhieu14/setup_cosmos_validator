# !/bin/bash

export VALIDATOR_ADDRESS=$1
export WALLET_ADDRESS=$2

sed -i "s/DEFAULT_VALOPER_ADDRESS/$VALIDATOR_ADDRESS/" ~/cosmos_node_monitoring/prometheus/prometheus.yml
sed -i "s/DEFAULT_WALLET_ADDRESS/$WALLET_ADDRESS/" ~/cosmos_node_monitoring/prometheus/prometheus.yml

cd ~/cosmos_node_monitoring/
docker-compose down
docker-compose up -d

