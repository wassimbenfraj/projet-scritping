set title "SYSTEM USAGE" 
set xlabel "PID"
set ylabel "% CPU"
set grid 

plot "result.txt" u (column(0)):2:xtic(1) w l title "","result.txt" u (column(0)):3:xtic(1) w l title ""
