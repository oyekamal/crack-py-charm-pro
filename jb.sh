#!/bin/bash
result=$(sudo iptables -S | grep "block jb")
if [[ ! -z $result ]]; then
    echo "finded old ip"
    ip=$(echo $result | awk '{print $4}')
    echo $ip
    sudo iptables -D INPUT -s $ip -m comment --comment "block jb" -j DROP
    echo "deleted old ip"
fi
ipaddresses=$(nslookup account.jetbrains.com | grep Address: | awk '!/127\./{ print $2}')
temp=()
for i in $ipaddresses; do temp+=($i) ; done
for ipaddress in ${temp[@]}; do echo $ipaddress; sudo iptables -A INPUT -s $ipaddress -j DROP -m comment --comment "block jb";done
echo "all good"
