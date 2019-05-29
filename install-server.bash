#!/usr/bin/env bash

# 1. Create a user and login.
sudo adduser dstserver
# 2. Download linuxgsm.sh.
su -c "cd ~; wget -O linuxgsm.sh https://linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh dstserver" dstserver
# 3. Run the installer and follow the instructions.
su -c "cd ~; ./dstserver install" dstserver
