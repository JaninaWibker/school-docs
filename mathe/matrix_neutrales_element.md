# neutrale Elemente bei Matrizen

Genau wie bei "normalen" Zahlen gibt es bei Matrizen auch neutrale Elemente. Hierbei ist aber zu beachten, dass es nur für quadratische Matrizen neutrale Elemente gibt und das es für jede Größe von $n \times n$ Matrizen ein anderes neutrales Element gibt. Jedes neutrale Element wird immer das gleiche Muster haben. Da es nur für quadratische Matrizen ein neutrales Element gibt, ist auch das neutrale Element eine quadratische Matrix.

Das Muster, welches ein neutrales Element erfüllt ist, dass es immer eine "Linie" an 1'en von Oben-Links nach Unten-Rechts gibt. Alle anderen Positionen sind mit 0'en gefüllt. Dies entsteht durch den Weg wie Matrix Multiplikation funktioniert. Dadurch, dass es immer nur eine 1 in jeder Spalte und Zeile gibt und durch die passende Position dieser 1 wird immer nur das Element übernommen anstatt mit anderen aufsummiert zu werden. 

Beispiel: $$\begin{pmatrix}
1 & 0 & 0\\\\
0 & 1 & 0\\\\
0 & 0 & 1
\end{pmatrix}$$

> Das neutrale Element wird auch of “identity matrix” genannt. Damit ähnelt es theoretisch auch der Funktionsweise der *identity function* ($f(x) =x $) in *Lambda Calculus*

Das neutrale Element für quadratische Matrizen der Größe $n \times n$ wird auch oft als $I_n$ dargestellt.