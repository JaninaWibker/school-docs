# Fakultät

Die Fakultät einer Zahl ist die Zahl mit allen vorherigen Zahlen, bis 1, aufmultipliziert. Somit ist von $5$ z.B. die Fakultät $5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 = 120$. Hierbei ist eine rekursive Definition auch möglich, und eigentlich immer bevorzugt. Die Fakultät einer Zahl ist die Zahl multipliziert mit der Fakultät der vorhergehenden Zahl, solange bis die vorhergehende Zahl 1 ist.

$$n! =\begin{cases} 1, &n=0 \\ n\cdot (n-1)!, &n>0\end{cases}$$

> Für die Fakultät wird ein $!$ als Operator verwendet.
