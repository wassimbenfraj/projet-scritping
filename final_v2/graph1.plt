set title "SYSTEM USAGE" 
set xlabel "PID"
set ylabel "% MEM"
set grid 
plot "result1.txt" u (column(0)):2:xtic(1) w l title "","result1.txt" u (column(0)):3:xtic(1) w l title ""
