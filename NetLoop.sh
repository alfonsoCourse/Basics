#!/bin/bash
echo " Cuantos pings por archivo?"
	read count
echo " interval per ping?"
	read inter
ideal=$(( $count * $inter))
echo " Create a new file every x seconds (tiempo de cada Ronda) Recommend: $ideal"
	read time
echo " How many files ?"
	read filesnum
total=$(($filesnum*$time))
echo " Total time: $total seconds"
f=1
while [ $f -le $filesnum ] 
do 
	now=$(date "+%Y_%m_%d_%H_%M_%S")
	#IPs.txt is a list of IP add. you can add more IPs while the loop is working
	file=$(cat ./"IPs".txt)
		for i in $file
			do
				ping -i $inter -c $count $i >> "$i""_""$now".txt &
				echo "$i""-""$now""------>No.$f out of $filesnum"
			done
	((f++))
	sleep $time
done
