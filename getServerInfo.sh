#!/bin/bash
echo "Get Cpu Information"
grep processor /proc/cpuinfo
echo "-------------------------------------------------------------"

echo "Total number of processors: "
grep processor /proc/cpuinfo | wc -l
echo "-------------------------------------------------------------"

echo "Monitoring data for system uptime"
uptime
echo "-------------------------------------------------------------"

echo "List of all IPs connecting to the Server: "
netstat -ntu|awk '{print $5}'|cut -d: -f1 -s|sort|uniq -c|sort -nk1