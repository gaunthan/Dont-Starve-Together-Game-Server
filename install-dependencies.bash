#!/usr/bin/env bash

DISTRO=$(lsb_release -i | cut -f2)
WORD_SIZE=$(getconf LONG_BIT)

echo "Machine: ${DISTRO} ${WORD_SIZE} bits"
echo "Installing dependencies..."

if [[ "$DISTRO" == "Ubuntu" ]]; then
  if [[ "$WORD_SIZE" == "32" ]]; then
    sudo apt install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux libstdc++6 libcurl4-gnutls-dev -y
  elif [[ "$WORD_SIZE" == "64" ]]; then
    sudo dpkg --add-architecture i386; sudo apt update; sudo apt install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 libstdc++6:i386 libcurl4-gnutls-dev:i386 -y
  fi
elif [[ "$DISTRO" == "Debian" ]]; then
  if [[ "$WORD_SIZE" == "32" ]]; then
    sudo apt install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux libstdc++6 libcurl4-gnutls-dev -y
  elif [[ "$WORD_SIZE" == "64" ]]; then
    sudo dpkg --add-architecture i386; sudo apt update; sudo apt install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc jq tmux lib32gcc1 libstdc++6 libstdc++6:i386 libcurl4-gnutls-dev:i386 -y
  fi
elif [[ "$DISTRO" == "Fedora" ]]; then
  if [[ "$WORD_SIZE" == "32" ]]; then
    sudo dnf install mailx postfix curl wget file bzip2 gzip unzip python binutils bc jq tmux libstdc++ libcurl -y
  elif [[ "$WORD_SIZE" == "64" ]]; then
    sudo dnf install mailx postfix curl wget file bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 libcurl.i686 -y
  fi
elif [[ "$DISTRO" == "CentOS" ]]; then
  if [[ "$WORD_SIZE" == "32" ]]; then
    sudo yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux libstdc++ libcurl -y
  elif [[ "$WORD_SIZE" == "64" ]]; then
    sudo yum install mailx postfix curl wget bzip2 gzip unzip python binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 libcurl.i686 -y
  fi
fi
