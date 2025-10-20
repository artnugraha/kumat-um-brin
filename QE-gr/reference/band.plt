#!/usr/local/bin/gnuplot -persist
# Last modified: 2023/02/06 08:18
#set terminal postscript eps enhanced color 28 lw 2
#set output "band.eps"
set terminal png enhanced lw 2 font "Arial,20"
set output "band.png"
set ylabel 'Energy (eV)'

set ytics 5

unset key

x1 = 0.66666666
x2 = 1
xmax = 1.5773
ymin = -20
ymax = 6
ef = -1.6767 

set xrange [0:xmax]
set yrange [ymin:ymax]
set xtics ("{/Symbol G}" 0, "K" x1, "M" x2, "{/Symbol G}" xmax)
set arrow 1 nohead from x1,ymin to x1,ymax lt 2 lc "black"
set arrow 2 nohead from x2,ymin to x2,ymax lt 2 lc "black"

plot 'gr.bands.gnu' using 1:($2-ef) w l

