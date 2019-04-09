# Partielle Integration

Die **partielle Integration** ist eine Methode bestimmte Funktionen zu integrieren, die man mit dem normalen Aufleiten nciht integrieren kann. Dabei nutzt man eine umgestellte Produktregel, die man dann auf die Funktion anwenden kann um eine Stammfunktion zu erhalten. Eventuell ist hierbei das mehrfache anwenden von partieller Integration, sowie normalem Formelumformen benötigt.

## Herleitung

Die normale Produktregel für die Funktionen $f(x)$ und $g(x)$ lautet:

$$\left( f(x) \cdot g(x) \right)' = f'(x) \cdot g(x) + f(x) \cdot g(x)$$

Daraus folgt:

$$f(x) \cdot g(x) = \int f'(x) \cdot g(x) dx + \int f(x) \cdot g'(x) dx$$

Das lässt sich dann umformen zum Leitsatz der partiellen Integration?

$$\int f(x) \cdot g'(x) = f(x) \cdot g(x) - \int f(x) \cdot g(x) dx$$

## Anweundung

Meist wird die partielle Integration auf Integrale der Form $\displaystyle{\int a(x) \cdot b(x) dx}$ angewendet, kann aber auch verwendet werden für andere Arten von Integralen durch Erweiterung um den Faktor 1. Somit können auch Integrale wie z.B. $\displaystyle{\int \ln(x) dx}$ gelöst werden.

Man hat die beiden Teile $a(x)$ und $b(x)$, diese setzt man dann als $f(x)$ und $g'(x)$ in den Leitsatz der partiellen Integration ein. Dabei ist zu beachten, das frei entschieden werden kann, was $f(x)$ und was $g'(x)$ ist, es aber ratsam ist für $a(x)$ wenn möglich den Wert zu nehmen der nach Ableiten weniger kompliziert ist, also z.B. $x \rightarrow 1$. Des weiteren sollte beachtet werden, dass es sich um $g'(x)$ und **nicht** $g(x)$ handelt. Somit ergibt sich dann:

$$
\begin{matrix}
f(x)  =  a(x) &  g(x) = \int b(x) dx\\\\
f'(x) = a'(x) & g'(x) = b(x)
\end{matrix}
$$

In die Formel eingesetzt erhält man dann

$$\int a(x) \cdot b(x) \\; dx = a(x) \cdot \smallint b(x)\\, dx - \int a'(x) \cdot \smallint b(x)\\, dx\\; dx$$

Falls $\displaystyle{\int a'(x) \cdot \smallint b(x)\\, dx\\; dx}$ nicht normal zu integrieren ist, muss man nochmal partielle Integration anwenden. Hierbei kann es sein, dass danach normale Gleichungsumformung genutzt werden kann um die Gleichungs zu lösen und das Problem dadurch zu umgehen.

## Beispiele

$$
\begin{alignedat}{3}
{\scriptsize{(1)}}\\;\\;\\;&
\int x \cdot \cos(x)\\; dx\\, &=&\\, x \cdot \smallint \sin(x)\\, dx - \int x' \cdot \smallint \cos(x)\\, dx \\; dx\\\\
                             &&=&\\, x \cdot \sin(x) - \int 1 \cdot \sin(x) \\; dx\\\\
{\scriptsize{(\text{Erg. }1)}}\\;\\;\\;& &=&\\, x \cdot \sin(x) + \cos(x) + c\\\\
\\\\
\\\\
{\scriptsize{(2)}}\\;\\;\\;&
\int \ln(x) \\; dx\\, &=&\\, \int \ln(x) \cdot 1 \\; dx\\\\
                     &&=&\\, \int \ln(x) \cdot x' \\; dx \\\\
                     &&=&\\, \ln(x) \cdot x - \int \dfrac{1}{x} \cdot x \\; dx\\\\
                     &&=&\\, \ln(x) \cdot x - \int 1 \\; dx\\\\
{\scriptsize{(\text{Erg. }2)}}\\;\\;\\;& &=&\\, \ln(x) \cdot x - x + c\\\\
\\\\
\\\\
{\scriptsize{(3)}}\\;\\;\\;&
\int x^2 \cdot e^x \\; dx\\, &=&\\, x^2 \cdot e^x - \int 2x \cdot e^x \\; dx\\\\
                             &&=&\\, x^2 \cdot e^x - \left( 2x \cdot e^x - \int 2 \cdot e^x \\; dx \right)\\\\
                             &&=&\\, x^2 \cdot e^x - \left( 2x \cdot e^x - 2 \cdot \int e^x \\; dx \right)\\\\
                             &&=&\\, x^2 \cdot e^x - \left( 2x \cdot e^x - 2e^x \right)\\\\
{\scriptsize{(\text{Erg. }3)}}\\;\\;\\;& &=&\\, e^x \cdot \left( x^2 - 2x + 2 \right) + c\\\\
\\\\
\\\\
{\scriptsize{(4)}}\\;\\;\\;&
\int e^x \cdot \cos(x) \\; dx\\, &=&\\, e^x \cdot \sin(x) - \int e^x \cdot \sin(x) \\; dx\\\\
                                &&=&\\, e^x \cdot \sin(x) - \left( e^x \cdot (-\cos(x)) - \int e^x \cdot (-\cos(x)) \\; dx \right)\\\\
                                &&=&\\, e^x \cdot \sin(x) - \left( -e^x \cdot \cos + \int e^x \cdot  cos(x) \\; dx \right)\\\\
&\underline{\int e^x \cdot \cos(x) \\; dx\\,} &=&\\; e^x \cdot \sin(x) + e^x \cdot \cos(x) - \underline{\int e^x \cdot \cos(x) \\; dx}\\\\
                                &&\large{\stackrel{+}{\implies}}&\\\\
&2 \cdot \int e^x \cdot \cos(x) \\; dx\\, &=&\\; e^x \cdot \sin(x) + e^x \cdot \cos(x)\\\\
                                &&\large{\stackrel{\div}{\implies}}&\\\\
{\scriptsize{(\text{Erg. }4)}}\\;\\;\\;
&\int e^x \cdot \cos(x) \\; dx\\, &=&\\, \dfrac{e^x \cdot \sin(x) + e^x \cdot \cos(x)}{2}
\end{alignedat}
$$