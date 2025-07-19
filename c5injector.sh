#!/bin/bash

clear
figlet "C5 INJECTOR"
echo ""

echo -e "\e[2mWelcome to \e[0m\e[1mGIBSON WALKER\e[0m\e[2m penetration testing shell\e[0m"
echo -e "\e[1;37m< C5 Injector >\e[0m"
echo ""

echo -e "\e[1m┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\e[0m"
echo -e "\e[1m┃                                                               ┃\e[0m"
echo -e "\e[1m┃  ██████╗   █████╗  ██████╗ ██████╗  ██████╗  ██╗ ██████╗      ┃\e[0m"
echo -e "\e[1m┃  ██╔══██╗ ██╔══██╗ ██╔══██╗╚══██╔══╝ ██╔══██╗ ██║ ╚════██╗    ┃\e[0m"
echo -e "\e[1m┃  ██████╔╝ ██║  ██║ ██║  ██║   ██║    ██████╔╝ ██║  █████╔╝    ┃\e[0m"
echo -e "\e[1m┃  ██╔══██╗ ██║  ██║ ██║  ██║   ██║    ██╔══██╗ ██║  ╚═══██╗    ┃\e[0m"
echo -e "\e[1m┃  ██████╔╝ ╚█████╔╝ ██████╔╝   ██║    ██║  ██║ ██║ ██████╔╝    ┃\e[0m"
echo -e "\e[1m┃  ╚═════╝   ╚════╝  ╚═════╝    ╚═╝    ╚═╝  �═╝ ╚═╝ ╚═════╝     ┃\e[0m"
echo -e "\e[1m┃                                                               ┃\e[0m"
echo -e "\e[1m┃  C5 Injector 3.0.0                                            ┃\e[0m"
echo -e "\e[1m┃  Coded by Gibson Walker                                       ┃\e[0m"
echo -e "\e[1m┃  Edge-Security Research                                       ┃\e[0m"
echo -e "\e[1m┃                                                               ┃\e[0m"
echo -e "\e[1m┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\e[0m"

echo -e "\e[31m[!] legal disclaimer:\e[0m Usage of C5 Injector for attacking targets without prior mut>
echo "It is the end user's responsibility to obey all applicable local, state and federal laws."
echo "Developers assume no liability and are not responsible for any misuse or damage caused by this p>
echo ""
sleep 1

TARGET=$1
if [ -z "$TARGET" ]; then
    echo "Usage: ./akwasi-c5.sh target.com"
    exit 1
fi

echo "[*] Starting OAG Killchain for $TARGET"
./scripts/auto_recon.sh $TARGET
./scripts/enum.sh $TARGET
./scripts/crack.sh $TARGET
./scripts/inject.sh $TARGET
./scripts/exploit.sh $TARGET
./scripts/loot.sh $TARGET
./scripts/cleanup.sh $TARGET
