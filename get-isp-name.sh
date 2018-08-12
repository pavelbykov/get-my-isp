#!/bin/bash

# Attempts to resolve a 2nd level domain of an IP address using a list of DNS methods and dig command
# Returns name following root
# Requires dig(dnsutils), head, and awk


if [ -z "$1" ]
then
    echo "Usage: $0 <ipv4_address>"
    echo "Will return 2nd level domain name."
    exit 1
fi

METHODLIST="answer authority"
for METHOD in $METHODLIST; do
 RESPONSE=`dig +noall +$METHOD -x $1 | head -n 1 | awk -F. '{print $(NF-2)}'`
 if [ -z "$RESPONSE" ]
   then
     continue
   else
     echo "$RESPONSE"
     break
 fi
done
