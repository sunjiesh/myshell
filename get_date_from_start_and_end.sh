#!/bin/bash

startDate=20180602
endDate=20180613
startSec=`date -d "$startDate" "+%s"`
endSec=`date -d "$endDate" "+%s"`
for((i=$startSec;i<=$endSec;i+=86400))
do
    yd=`date -d "@$i" "+%Y-%m-%d"`
    echo ${yd}
done
