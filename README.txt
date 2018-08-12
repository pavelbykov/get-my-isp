Get Public IP Address
=====================

Attempts to enumerate Public IP Address using a list of methods
Returns IP address in decimal format

Usage
-----
./get-pub-ip.sh

Get ISP Name
============

Attempts to resolve a 2nd level domain of an IP address using a list of DNS methods and dig command
Returns name following root
Requires dig(dnsutils), head, and awk

Usage
-----
./get-isp-name.sh <ipv4_address>


Get My ISP name
===============

Get name of crrent ISP by first finding out public IP address and then resolving it's owner's name


Usage
-----
./get-my-isp-name.sh

