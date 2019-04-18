# Copyright © 2017-2019 Jannik Wibker. All rights reserved.
set terminal svg size 600,400 dynamic enhanced font 'arial,10' butt dashlength 1.0
set output 'Mathe-diagrams-gnuplot-template.svg'

set object 1 rectangle fillstyle transparent solid 0

set title "<TITLE>"

#set xrange [<xmin>:<xmax>]
#set yrange [<ymin>:<ymax>]

#set ytics <y step size>
#set xtics <x step size>

#f(x) = <function to plot>
plot f(x) lt rgb "black" notitle