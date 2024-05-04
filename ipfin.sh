#!/bin/bash

if [ "$1" == "" ]
then
echo "usage: $0 IP"
exit
fi
res=$(curl http://ip-api.com/json/$1 -s)
status=$(echo $res | jq '.status' -r)
if [ $status == "success" ]
then
country=$(echo $res | jq '.country' -r)
echo "Country: $country"
region=$(echo $res | jq '.region' -r)
echo "Region: $region"
city=$(echo $res | jq '.city' -r)
echo "City: $city"
zip=$(echo $res | jq '.zip' -r)
echo "Zip: $zip"
lat=$(echo $res | jq '.lat' -r)
echo "Latitude: $lat"
lon=$(echo $res | jq '.lon' -r)
echo "Longitude: $lon"
timezone=$(echo $res | jq '.timezone' -r)
echo "Timezone: $timezone"
isp=$(echo $res | jq '.isp' -r)
echo "ISP: $isp"
org=$(echo $res | jq '.org' -r)
echo "Org: $org"

fi
