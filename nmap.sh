#! /bin/bash


echo "Please enter location of ip file.\n"
read ip_list

for i in $(cat $ip_list)
do
    mkdir output/$i/
    nmap -T3 $i -oA output/$i/All_scan_basic_$i -Pn -p-
done
