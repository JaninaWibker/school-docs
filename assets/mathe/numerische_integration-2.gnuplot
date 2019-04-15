set terminal svg size 600,400 dynamic enhanced font 'arial,10' butt dashlength 1.0
set output 'numerische_integration-2.svg'

set object 1 rectangle fillstyle transparent solid 0

set title "numerische Integration - Rechtssumme"

set yrange [0:10]
set xrange [-5:5]

set xtics 1

f(x) = -0.1 * (x+1.8719419067834)**4 + 0.4 * (x+1.8719419067834)**3 + 0.2 * (x+1.8719419067834)**2 + 5

set arrow from -4, graph 0 to -4, f(-3) nohead
set arrow from -4, f(-3) to -3, f(-3) nohead
set arrow from -3, graph 0 to -3, f(-3) nohead

set arrow from -3, graph 0 to -3, f(-2) nohead
set arrow from -3, f(-2) to -2, f(-2) nohead
set arrow from -2, graph 0 to -2, f(-2) nohead

set arrow from -2, graph 0 to -2, f(-1) nohead
set arrow from -2, f(-1) to -1, f(-1) nohead
set arrow from -1, graph 0 to -1, f(-1) nohead

set arrow from -1, graph 0 to -1, f(0) nohead
set arrow from -1, f(0) to  0, f(0) nohead
set arrow from  0, graph 0 to  0, f(0) nohead

set arrow from 0, graph 0 to 0, f(1) nohead
set arrow from 0, f(1) to 1, f(1) nohead
set arrow from 1, graph 0 to 1, f(1) nohead

set arrow from 1, graph 0 to 1, f(2) nohead
set arrow from 1, f(2) to 2, f(2) nohead
set arrow from 2, graph 0 to 2, f(2) nohead

set arrow from 2, graph 0 to 2, f(3) nohead
set arrow from 2, f(3) to 3, f(3) nohead
set arrow from 3, graph 0 to 3, f(3) nohead

plot f(x) lt rgb "black" notitle