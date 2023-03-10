#!/bin/bash

echo "Script is loading..."
sleep 3
clear

echo -e "\e[4;31m PLease Read Instruction Carefully !!! \e[0m"
echo " "

echo "[+] Choose your option: 
    1) Basic scan
    2) Find open port, services and MAC address
    3) Scan multiple hosts
    4) Scan whole subnets
    5) Scan firewall settings
    6) Identify hostnames
    7) Help for commands "

echo " "
read option
clear

if [ $option -eq 7 ]; then
    sudo nmap -h
    exit
fi

echo "[+] Enter your IP address or URL"
read IP

if [ $option -eq 1 ]; then
    sudo nmap -T4 $IP

    elif [ $option -eq 2 ]; then
    sudo nmap -v -T4 $IP

    elif [ $option -eq 3 ]; then
    sudo nmap -T4 $IP

    elif [ $option -eq 4 ]; then
    sudo nmap -T4 $IP *

    elif [ $option -eq 5 ]; then
    sudo nmap -sA -T4 $IP

    elif [ $option -eq 6 ]; then
    sudo nmap -sL -T4 $IP

    else
    echo -e "\e[4;32m Invalid Input !!! \e[0m"
fi