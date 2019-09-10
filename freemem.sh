#!/bin/bash
total=$(free -m | grep Mem |awk '{print $2}')
used=$(free -m | grep Mem |awk '{print $3}')
rate=$(( $used*100/$total ))
if [ $rate -gt 1 ]
then
echo " rate=$rate freeMemory start! "
sync
echo 3 >> /proc/sys/vm/drop_caches
echo " FreeMemory Success! "
else
echo " rate=$rate Memory is normal "
fi
