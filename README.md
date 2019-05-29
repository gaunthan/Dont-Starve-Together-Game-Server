# Dont-Starve-Together-Game-Server
Build your own DST (Don't Starve Together) server by LinuxGSM.

## Tutorials

- [Don’t Starve Together - LinuxGSM](https://linuxgsm.com/lgsm/dstserver/)
- [Linux 搭建饥荒联机版服务器](https://www.jianshu.com/p/75cc3cfaf117)

## Create Server Token
Login to [klei](http://kleientertainment.com), then visit this [page](https://accounts.klei.com/account/game/servers?game=DontStarveTogether) to create server token.

For easily searching the server when browsing server list, it's a good idea to use a friendly name.

After entering the server's name, click "ADD NEW SERVER", and you will get an access token.

*****Installing dstserver will ask you to enter the token, so please copy it to your clipboard.**

## Clone this repo

```shell
cd /tmp
git clone https://github.com/gaunthan/Dont-Starve-Together-Game-Server.git
cd Dont-Starve-Together-Game-Server
```

## Install dstserver
Run the following commands on your Linux Terminal to install dstserver

```shell
./install-dependencies.bash
./install-server.bash
```

## Install mods
You should install mods for better game experience.

Put your favorite mods in file mods.txt, then run the following commands to deploy the settings

```shell
./deploy-mod-settings.bash
```

## Start Server
```shell
su - dstserver
./dstserver start
```
