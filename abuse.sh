#!/bin/sh

ips=(`cat ips.txt`) 

for i in "${ips[@]}"
do
echo "$i:"
curl -G https://api.abuseipdb.com/api/v2/check  --data-urlencode "ipAddress=$i" -d maxAgeInDays=90  -H "Key: ADD your API Key here" -H "Accept: application/json"
echo -e "\n--------------------------------------------------------------------------\n"
done
