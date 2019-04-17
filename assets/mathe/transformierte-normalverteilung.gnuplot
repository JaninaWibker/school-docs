set terminal svg size 600,400 dynamic enhanced font 'arial,10' butt dashlength 1.0
set output 'transformierte-normalverteilung.svg'

set object 1 rectangle fillstyle transparent solid 0

set title "transfomierte Normalverteilung"

# set xtics ("-4" -4, "-3" -3, "-2" -2, "-1" -1, "-0.5" -0.5, "0" 0, "0.5" 0.5, "1" 1, "2" 2, "3" 3, "4" 4)
set xtics ("400" 400, "425" 425, "450" 450, "475" 475, "500" 500, "525" 525, "550" 550, "575" 575, "600" 600)
set ytics 0.005
set yrange [0:0.02]
set xrange [375:625]

invsqrt2pi = 0.398942280401433
normal(x,mu,sigma)=sigma<=0?1/0:invsqrt2pi/sigma*exp(-0.5*((x-mu)/sigma)**2)
_normal(x)=normal(x,500,25)

set label 1 at 575, 0.017 "E(X) = 500"
set label 2 at 575, 0.016 "σ(X) =  25"

plot normal(x, 500, 25) lt rgb "black" notitle