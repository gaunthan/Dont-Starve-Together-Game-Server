#!/usr/bin/env bash

mods_setup_file="~/serverfiles/mods/dedicated_server_mods_setup.lua"
mods_setting_file="~/serverfiles/mods/modsettings.lua"

touch /tmp/mods_setup_file && > /tmp/mods_setup_file
touch /tmp/mods_setting_file && > /tmp/mods_setting_file

cat mods.txt | while read line 
do
  mod_id=$line
  
  echo "ServerModSetup(\"${mod_id}\")" >> /tmp/mods_setup_file
  echo "ForceEnableMod(\"workshop-${mod_id}\")" >> /tmp/mods_setting_file
done

su -s /bin/bash -c "cat /tmp/mods_setup_file >> $mods_setup_file; cat /tmp/mods_setting_file >> $mods_setting_file" dstserver
