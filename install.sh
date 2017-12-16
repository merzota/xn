#!/bin/bash
apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git vim supervisor cpulimit

mkdir /root/1
cp /root/xn/xmr-stak-cpu /root/1/xmr-stak-cpu
cp /root/xn/config.txt /root/1/config.txt

mkdir /root/2
cp /root/xn/xmr-stak-cpu /root/2/xmr-stak-cpu
cp /root/xn/config2.txt /root/2/config.txt

sysctl -w vm.nr_hugepages=128
ulimit -l
cp -rf /root/xn/limits.conf /etc/security/limits.conf

cp -rf /root/xn/supervisord.conf /etc/supervisor/supervisord.conf
/etc/init.d/supervisor restart all

#cp -rf ./rc.local /etc/rc.local
#/etc/rc.local
