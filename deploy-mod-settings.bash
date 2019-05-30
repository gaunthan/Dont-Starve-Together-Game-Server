#!/usr/bin/env bash

SERVER_NAME="dstserver"
MODS_SETUP_FILE="~/serverfiles/mods/dedicated_server_mods_setup.lua"
MODS_SETTING_FILE="~/serverfiles/mods/modsettings.lua"

touch /tmp/mods_setup_file && > /tmp/mods_setup_file
touch /tmp/mods_setting_file && > /tmp/mods_setting_file

cat mods.txt | while read line 
do
  mod_id=$line
  
  echo "ServerModSetup(\"${mod_id}\")" >> /tmp/mods_setup_file
  echo "ForceEnableMod(\"workshop-${mod_id}\")" >> /tmp/mods_setting_file
done

echo "Enter information for $SERVER_NAME:"
su -s /bin/bash -c "sed -i '/^ServerModSetup/d' $MODS_SETUP_FILE; \
                    sed -i '/^ForceEnableMod/d' $MODS_SETTING_FILE; \
                    cat /tmp/mods_setup_file >> $MODS_SETUP_FILE; \
                    cat /tmp/mods_setting_file >> $MODS_SETTING_FILE" $SERVER_NAME
