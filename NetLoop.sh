#!/bin/bash
#Popular un archivo de txt para hacer de base de lista de IPs
#Modificar los intervalos de cada ping ej. un ping cada 3s 
#Cuantos pings
echo "stop after replies "
read inter
echo " How many seconds between sending each packet?"
read count
echo " Create a new file every x seconds"
read time

while true; do 
now=$(date)

#IPs.txt is a list of IP add. you can add more IPs while the loop is working

file=$(cat ./"IPs".txt)

for i in $file
do
ping -i $inter -c $count $i >> "$i""_""$now".txt &
done

sleep $time
done
