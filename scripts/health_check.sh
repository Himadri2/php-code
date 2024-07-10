#!/bin/bash

IP_ADDRESS="3.110.220.43"
URL="http://${IP_ADDRESS}/"

# Perform HTTP request and check response code
response_code=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$response_code" -eq 200 ]; then
    echo "HTTP response code from $IP_ADDRESS is 200 OK."
else
    echo "HTTP response code from $IP_ADDRESS is $response_code."
fi

