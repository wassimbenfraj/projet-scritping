save()
{
 
 cat /proc/cpuinfo | grep "model name" |  head -1 > info.txt
 cat /proc/cpuinfo  | grep "cpu cores"  | head -1 >> info.txt
 ps -aeF |  sort -k 4 | awk '{print "le processus le plus gourmand est " $2 " utilise " $4 "%" }' | tail -2 | head -1  >>info.txt
 x=$(ps -aeF |  sort -k 4 | awk '{print $2 }' | tail -2 | head -1)
 cat /proc/$x/status | grep "Name" |awk '{print "le nom de se processus est : " $2 }' >>info.txt
}


