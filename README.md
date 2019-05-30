# Dont-Starve-Together-Game-Server
Build your own DST (Don't Starve Together) server by LinuxGSM.

## Tutorials

- [Don’t Starve Together - LinuxGSM](https://linuxgsm.com/lgsm/dstserver/)
- [Linux 搭建饥荒联机版服务器](https://www.jianshu.com/p/75cc3cfaf117)

## Create Server Token
Login to [klei](http://kleientertainment.com), then visit this [page](https://accounts.klei.com/account/game/servers?game=DontStarveTogether) to create a server token.

After entering the server's name, click "ADD NEW SERVER", and you will get an access token.

**Later Installing will ask you to enter the token, so please copy it to your clipboard.**

## Easy Install
The easiest way to install DST game server is by running the following command

```shell
curl -sLf https://raw.githubusercontent.com/gaunthan/Dont-Starve-Together-Game-Server/master/easy-install.bash | bash 
```

If you want to install the game server step by step, please follow the instructions proposed in section "Detailed Steps".

## Detailed Steps
### Clone The Repo

```shell
cd /tmp
git clone https://github.com/gaunthan/Dont-Starve-Together-Game-Server.git
cd Dont-Starve-Together-Game-Server
```

### Install Game Server
Run the following commands on your Linux Terminal to install dstserver

```shell
./install-dependencies.bash
./install-server.bash
```

### Install Mods
You should install mods for better game experience.

Put your favorite mods in file `mods.txt`, then run the following commands to deploy the settings

```shell
./deploy-mod-settings.bash
```

### Configure The Server
Modify file `/home/dstserver/.klei/DoNotStarveTogether/Cluster_1/cluster.ini` to configure your server.

### Start The Server

```shell
su - dstserver -c "~/dstserver start"
```
