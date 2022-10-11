#! /bin/bash


echo "Please enter location of ip file.\n"
read ip_list

for i in $(cat $ip_list)
do
    nmap -A -T3 $i -oA All_scan_basic_$i -Pn
done
