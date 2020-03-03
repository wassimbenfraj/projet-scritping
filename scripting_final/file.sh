
 ps -aeF |  sort -k 4 | awk '{print $2 " " $4 }' | tail -10 >result.txt


gnuplot --persist -e "datafiles='${date}'; outputname='${output}'" graph.plt
