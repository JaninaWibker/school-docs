# Copyright © 2017-2019 Janina Wibker. All rights reserved.
set terminal svg size 600,400 dynamic enhanced font 'arial,10' butt dashlength 1.0
set output 'standard-normalverteilung.svg'

set object 1 rectangle fillstyle transparent solid 0

set title "Standardnormalverteilung"

set xtics ("-4" -4, "-3" -3, "-2" -2, "-1" -1, "-0.5" -0.5, "0" 0, "0.5" 0.5, "1" 1, "2" 2, "3" 3, "4" 4)
set ytics 0.1
set yrange [0:0.5]
set xrange [-5:5]

invsqrt2pi = 0.398942280401433
normal(x,mu,sigma)=sigma<=0?1/0:invsqrt2pi/sigma*exp(-0.5*((x-mu)/sigma)**2)
_normal(x)=normal(x,0,1)

plot normal(x, 0, 1) lt rgb "black" notitle