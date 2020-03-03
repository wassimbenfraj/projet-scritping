#! /bin/bash
source save.sh
source cpu.sh
source pid.sh
source help.sh
source processus.sh




while :
do

yad --center --width=500 --height=125 --text="Choose a command to launch :" \
--button="-lp":1 \
--button="-s pid":2 \
--button="-lcpu":3 \
--button="-help":4 \
--button="-s":5 \
--button="-gnuplot":6 


foo=$?



if [[ $foo -eq 1 ]]; then
processus


elif [[ $foo -eq 2 ]]; then
read opt1
pid

elif [[ $foo -eq 3 ]]; then
cpu

elif [[ $foo -eq 4 ]]; then
help

elif [[ $foo -eq 5 ]]; then
save

elif [[ $foo -eq 6 ]]; then

./file.sh
else
cancel && exit 0

fi

done
