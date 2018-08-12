#!/bin/bash

# Get name of crrent ISP by first finding out public IP address and then resolving it's owner's name

PUBIPADDRESS=`./get-pub-ip.sh`
ISPNAME=`./get-isp-name.sh $PUBIPADDRESS`

echo "Public IP address: $PUBIPADDRESS"
echo "ISP Name: $ISPNAME"
