#!/usr/bin/env bash

SERVER_NAME="dstserver"
CONFIG_FILE="/home/${SERVER_NAME}/.klei/DoNotStarveTogether/Cluster_1/cluster.ini"

echo "Config file: ${CONFIG_FILE}"

echo "Enter information for $SERVER_NAME:"
su - ${SERVER_NAME} -c " \
  sed -i \"s/cluster_name = .*/cluster_name = Let's Starve And Then Die Together/g\" $CONFIG_FILE;
  sed -i \"s/cluster_description = .*/cluster_description = Let\'s Starve And Then Die Together/g\" $CONFIG_FILE;
  sed -i \"s/cluster_password = .*/cluster_password = 4321/g\" $CONFIG_FILE; "
