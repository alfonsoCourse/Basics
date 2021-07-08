#!/bin/bash

now=$(date)
echo "$now"

echo " What is your IP range? Example: 192.168.0"
read option
for ip in `seq 1 254`; do
ping $option.$ip -c 1| grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> "IP_ADDRESSES""$now".txt &
done

echo "ALL IPs addresses"
cat ./"IP_ADDRESSES""$now".txt

echo "Ping from the previous list and save it in individual files"
echo " How many seconds per ping?" 
read inter
echo "How many PINGS?"
read count

file=$(cat ./"IP_ADDRESSES""$now".txt)
for i in $file
do 
ping -i $inter -c $count $i >> "$i""_""$now".txt &
done
