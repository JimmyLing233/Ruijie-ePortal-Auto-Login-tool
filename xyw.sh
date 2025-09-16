#!/bin/sh
#/xxxx/Net/xyw.sh
echo "Start SchoolNet Test"
echo "[SchoolNet] ping 223.5.5.5"
ping -c 1 223.5.5.5
if [ $? -eq 0 ];then
    echo "[SchoolNet] School Network connected!"
else
    echo "[SchoolNet] Network Connection Failed!!! Start Auth!"
    var=`<脚本>`
    echo "[SchoolNet]" "$var"
    echo "[SchoolNet] Auth OK! Check Network Again!"
    sleep 15
    echo "[SchoolNet] ping 223.5.5.5"
    ping -c 1 223.5.5.5
    if [ $? -eq 0 ];then
        echo "[SchoolNet] Succeed!! School Network connected!"
    else
        echo "[SchoolNet] Oh NO!!!!!!! ERROR!"
    fi
fi
echo "[SchoolNet] End"
