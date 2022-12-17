#!/bin/bash
echo "Enter the malicious IP address to block"
read ip_address
route add "${ip_address}" reject
