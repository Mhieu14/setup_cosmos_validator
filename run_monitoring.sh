#!/bin/bash 

export MONITERING_ENV_FILE=$1
export VALIDATOR_IP=$2
export PROM_PORT=${3:-26660}

# create env
rm -f cosmos_node_monitoring/.env
echo -e $MONITERING_ENV_FILE > cosmos_node_monitoring/.env

# add prometheus prams
/cosmos_node_monitoring/add_validator.sh VALIDATOR_IP PROM_PORT VALOPER_ADDRESS WALLET_ADDRESS PROJECT_NAME

# run container
cd cosmos_node_monitoring/
docker-compose up -d