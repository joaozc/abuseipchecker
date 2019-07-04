#!/bin/sh

ips=(`cat ips.txt`) 

for i in "${ips[@]}"
do
echo "$i:"
curl -G https://api.abuseipdb.com/api/v2/check  --data-urlencode "ipAddress=$i" -d maxAgeInDays=90  -H "Key: 2ddb78ae4a31597c9a8e08df91de110364525dd0e7c5f950007d490c21c7df6b34e0e077111c9559" -H "Accept: application/json"
echo -e "\n--------------------------------------------------------------------------\n"
done
