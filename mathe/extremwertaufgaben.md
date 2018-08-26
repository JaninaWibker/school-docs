# Extremwertaufgaben

Extremwertaufgaben sind Aufgaben, bei denen unter bestimmten Bedingungen etwas maximiert oder minimiert werden soll. Dabei ist dies dann meist die effizienteste, schnellste oder beste Lösung. Die Aufgaben sind meist auch so formuliert, dass man nach dem effizientesten, ... unter bestimmten Bedingungen sucht, oft ein bestimmtes Volumen oder eine Fläche.

## Vorgehensweise

Um Extremwertaufgaben zu lösen folgt man einer bestimmten Vorgehensweise. Man definiert sich zunächst die sogenannte **Zielfunktion**, diese Funktion beschreibt, was maximiert bzw. minimiert werden soll (Beispiel: Fläche maximieren? $\Rightarrow A$). Das die Zielfunktion maximiert bzw. minimiert wird ist die Hauptbedingung. Dann definiert man die Nebenbedingung (oder die Nebenbedingungen) unter denen die Zielfunktion maximiert bzw. minimiert werden soll (Beispiel: Fläche soll Punkt $P$ berühren $\Rightarrow P(x_p|y_p)$). Nachdem man alle Bedingungen zusammen hat werden alle zusammen in einer sogenannten **Extremalfunktion** miteinander verbunden, hierbei setzt man dann die Bedingungen in die **Zielfunktion** ein (Beispiel: anstatt $h$ und $g$ wird der Punkt $P$ eingesetzt). Zu guter letzt bestimmt man den Hoch- bzw. Tiefpunkt der neu entstandenen Funktion und erhält somit den gesuchten Wert, falls man mehrere Werte erhält kann man meistens schon einige aussortieren, indem man guckt in welchem Bereich diese Funktion gültig ist. Danach muss man die Werte manuell miteinander vergleichen und den besten Wert auswählen (entweder den höchsten oder niedrigsten abhängig von der Aufgabe).

## Beispiel

Man hat die Funktion $f(x) = \dfrac{-1}{6}x^2+4.5$ gegeben und sucht ein Dreieck, welches im 1. Quandranten (also positive $x$ und $y$ Werte) liegt, den Nullpunkt ($(0, 0)$) und die Funktion berührt und die maximal mögliche Fläche hat. Man soll den Punkt $P$ angeben auf dem das Dreieck die Funktion $f(x)$ berührt sowie die Fläche des Dreiecks.

> Hauptbedingung & Zielfunktion

Die Hauptbedingung ist, dass das Dreieck die maximale Fläche hat

$A = \dfrac{1}{2} \cdot g \cdot h$

> Nebenbedingung(en)

Die 1. Nebenbedingung ist, dass der Punkt $P$ auf der Funktion $f(x)$ liegt

$P(x_p|y_p)$<br />
$P(x_p|f(x_p))$

Die 2. Nebenbedingung ist, dass das Dreieck den Punkt $P$, sowie den Nullpunkt schneidet

$A(x_p) = \dfrac{1}{2} \cdot x_p \cdot f(x_p)$

> Extremalfunktion

$A(x_p) = \dfrac{1}{2} \cdot x_p \cdot (\dfrac{-1}{6}x^2+4.5)$<br />
$A(x_P) = \dfrac{-1}{12}x^3 + 2.25x$

> Extremwerte bestimmen

$A(x_p) = \dfrac{-1}{12}x^3 + 2.25x$<br />
$A'(x_p) = \dfrac{-3}{12}x^2 + 2.25$<br />
$A'(x_p) = 0 \Longleftrightarrow x_{p1} = -3 \text{ und } x_{p2} = 3$<br />

Da das Dreieck nur im 1. Quandranten sein darf kann man $-3$ ignorieren.

> Ergebnis angeben

Nun hat man das Ergebnis und muss es nurnoch ordentlich darstellen

> Punkt $P$

$P(3|f(3))$<br />
$P(3|3)$<br />

> Fläche $A$

$A = \dfrac{1}{2} \cdot 3 \cdot f(3)  = \dfrac{1}{2} \cdot 3 \cdot 3 = 4.5$
