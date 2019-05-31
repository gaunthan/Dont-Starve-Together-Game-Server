#!/usr/bin/env bash

# 1. Clone this repo
cd /tmp
if [[ -d "/tmp/Dont-Starve-Together-Game-Server" ]]; then
  cd Dont-Starve-Together-Game-Server
  git pull
else
  git clone https://github.com/gaunthan/Dont-Starve-Together-Game-Server.git
  cd Dont-Starve-Together-Game-Server
fi

chmod +x *.bash

# 2. Install dstserver
./install-dependencies.bash
./install-server.bash

# 3. Install mods
./deploy-mod-settings.bash

# 4. Configure the Server
./configure-server.bash

# 5. Start The Server
su - dstserver -c "~/dstserver start"
