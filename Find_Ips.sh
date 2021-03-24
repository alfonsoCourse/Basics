#Scripted for Kali 2020.4

#!/bin/bash
option=$1
if [ "$option" == "" ]
then
echo " Syntax for faster lookup:  ./ip.sh 172.16.67"
echo " What is the IP you want to check? Format 172.16.67 "
read option
./Find_Ips.sh $option

else
for ip in `seq 1 254`; do 
ping $option.$ip -c 1| grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
