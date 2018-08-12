#!/bin/bash

# Attempts to enumerate Public IP Address using a list of methods
# Returns IP address in decimal format

IFS=,
METHODLIST="dig +short myip.opendns.com @resolver1.opendns.com,curl ipinfo.io/ip,curl ifconfig.me,curl https://api.ipify.org,curl checkip.amazonaws.com,wget -qO- ipinfo.io/ip,wget -qO- ifconfig.me/ip"
for METHOD in $METHODLIST; do
 RESPONSE=`eval "$METHOD"`
 if [ -z "$RESPONSE" ]
   then
     continue
   else
     echo "$RESPONSE"
     break
 fi
done
