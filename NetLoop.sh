#!/bin/bash
echo " Cuantos pings por archivo?"
	read count
echo " Cada cuantos segundos quieres que se mande cada PING?"
	read inter
ideal=$(( $count * $inter))
echo "Tiempo de cada nuevo archivo. Se recomienda: $ideal segundos"
	read time
echo " Cuantos archivos desea ?"
	read filesnum
total=$(($filesnum*$time))
echo " Tiempo estimado: $total segundos, equivalente a "$((total/60))" minutos"
f=1
while [ $f -le $filesnum ] 
do 
	now=$(date "+%Y_%m_%d_%H_%M_%S")
	#IPs.txt is a list of IP add. you can add more IPs while the loop is working
	file=$(cat ./"IPs".txt)
		for i in $file
			do
				ping -i $inter -c $count $i >> "$i""-""$now".txt &
				echo "$i""-""$now""------>No.$f out of $filesnum"
			done
	((f++))
	sleep $time
done
