#!/bin/bash
#Author: Alex Olea

echo -e "Enter the domain or IP to check: "
read domain

echo -e "Specify a port. If none, hit enter (defaults to 443): "
read port

if [[ $port == "" ]]
then
    port=443
fi

echo | openssl s_client -servername $domain -connect $domain:$port 2>/dev/null | openssl x509 -noout -dates