#!/usr/bin/env bash

SERVER_NAME="dstserver"

# 1. Create a user and login.
sudo adduser $SERVER_NAME

# 2. Download linuxgsm.sh.
# 3. Run the installer and follow the instructions.
echo "Enter information for $SERVER_NAME:"
su - $SERVER_NAME -c "
    wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh dstserver;
    ./dstserver install;"
