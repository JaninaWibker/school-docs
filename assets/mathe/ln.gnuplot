# Copyright © 2017-2019 Janina Wibker. All rights reserved.
set terminal svg size 600,400 dynamic enhanced font 'arial,10' butt dashlength 1.0
set output 'ln.svg'

set object 1 rectangle fillstyle transparent solid 0

set label 1 at -0.3, -0.4 "0"
set label 2 at  1.5, -1.5 "ln-Funktion"

f(x) = log(x)

# x,y min/max and center
xmin = -10
xc = 0
xmax = 10
ymin = -10
yc = 0 
ymax = 10
# default borders
tm = 1
bm = 1
rm = 4
lm = 4

set multiplot layout 2,2
## Plot 1, top left
set key top left
set xr [xmin:xc]
set yr [yc:ymax]
set tmargin tm
set bmargin 0
set rmargin 0
set lmargin lm
set border 9
unset ytics
set xtics nomirror ("-10" -10, "-8" -8, "-6" -6, "-4" -4, "-2" -2, "" 0, "1" 1, "2" 2, "4" 4, "6" 6, "8" 8, "10" 10)
plot f(x) lt rgb "black" notitle
## Plot 2, top right
unset key
set xr [xc:xmax]
set lmargin 0
set rmargin rm
set border 3
set ytics nomirror ("" 0, "2" 2, "4" 4, "6" 6, "8" 8, "10" 10)
replot
## Plot 3, bottom left
set xr [xmin:xc]
set yr [ymin:yc]
set bmargin bm
set tmargin 0
set lmargin lm
set rmargin 0
set border 12
unset tics
replot
## Plot 4, bottom right
set xr [xc:xmax]
set lmargin 0
set rmargin rm
set border 6
set ytics nomirror ("-10" -10, "-8" -8, "-6" -6, "-4" -4, "-2" -2, "" 0)
replot
unset multiplot