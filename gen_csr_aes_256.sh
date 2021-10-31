#!/bin/bash
#Author: Alex Olea

echo -e "Please enter the domain name: "
read domain

key=$domain.key
csr=$domain.csr

openssl  genrsa -aes256 -out $key 2048

openssl req -new -nodes -subj "/C=US/ST=Example City/L=Example State/O=Your Company/OU=Information Technologies and Services
                        /CN=$domain/emailAddress=Your Email" -newkey rsa:2048 -key $key -out $csr
