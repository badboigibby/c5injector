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

echo -e "\e[31m[!] legal disclaimer:\e[0m Usage of C5 Injector for attacking targets without prior mutual consent is illegal."
echo "It is the end user's responsibility to obey all applicable local, state and federal laws."
echo "Developers assume no liability and are not responsible for any misuse or damage caused by this program."
echo ""

sleep 1

TARGET=$1
if [ -z "$TARGET" ]; then
    echo "Usage: akwasi-c5 <target.com>"
    exit 1
fi

SCRIPT_DIR="$(dirname "$0")"

bash "$SCRIPT_DIR/scripts/auto_recon.sh" $TARGET
bash "$SCRIPT_DIR/scripts/enum.sh" $TARGET
bash "$SCRIPT_DIR/scripts/crack.sh" $TARGET
bash "$SCRIPT_DIR/scripts/inject.sh" $TARGET
bash "$SCRIPT_DIR/scripts/exploit.sh" $TARGET
bash "$SCRIPT_DIR/scripts/loot.sh" $TARGET
bash "$SCRIPT_DIR/scripts/cleanup.sh" $TARGET
