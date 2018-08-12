#!/bin/bash

# Attempts to resolve a 2nd level domain of an IP address using a list of DNS methods and dig command
# Returns name following root
# Requires dig(dnsutils), head, and awk

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
