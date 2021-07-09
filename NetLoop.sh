#!/bin/bash
f=1
while [ $f -le $3 ] 
do 
	now=$(date "+%Y_%m_%d_%H_%M_%S")
	#IPs.txt is a list of IP add. you can add more IPs while the loop is working
	file=$(cat ./"IPs".txt)
		for i in $file
			do
				ping -i 1 -c $2 $i >> "$1""-""$i""-""$now".txt &
				echo "$1""-""$i""-""$now""------>No.$f out of $3"
			done
	((f++))
	sleep $2
done
#./NetLoop.sh <NombreDispositivo> <PingsPorArchivo> <No. Archivos>
