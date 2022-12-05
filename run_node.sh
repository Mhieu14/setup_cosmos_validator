#!/bin/bash 

export SETUP_FILE_NAME=$1
export ENV_FILE=$2

export SETUP_FILE_URL=https://raw.githubusercontent.com/Mhieu14/demo-validator-dockernization/main/$SETUP_FILE_NAME.tar.xz

# download setup file
curl -O $SETUP_FILE_URL
tar -xf $SETUP_FILE_NAME.tar.xz
rm -f $SETUP_FILE_NAME/.env

# create env
echo -e $ENV_FILE > $SETUP_FILE_NAME/.env

# run container
cd $SETUP_FILE_NAME
docker-compose up -d