# Funktionen aus Bedingungen

Man erhält Bedingungen aus denen man eine Funktion berechnen soll eine Bedingung kann auch aus mehreren Bedingungen bestehen z.B.

> Ein Wendepunkt an Punkt $P(x_p|y_p)$ resultiert in
$f(x_p)=y_p$ aber auch $f''(x_p)=0$

Außerdem erhält man noch den Grad der Funktion durch den man dann ihre Grundfunktion ermitteln kann z.B.

> Funktion 3.Grades
$f(x)=a\cdot x^3+b\cdot x^2+c\cdot x+d$

## Bedingungen aufstellen

Wie man schon am Beispiel des Wendepunktes erkannt hat können sich die Bedingungen nicht nur auf die Grundfunktion sondern auch ihre Ableitungen beziehen.

> Beispiele:

Wenn ein Punkt $P(x_p∣y_p)$ gegeben ist, ist die Bedingung:

$f(x_p)=y_p$


Wenn ein Extrempunkt $P(x_p∣y_p)$ gegeben ist, sind die Bedingungen:

$f(x_p)=y_p$<br />
$f'(x_p)=0$

Hochpunkt:<br />
$f'(x_p) < 0$

Tiefpunkt:<br />
$f''(x_p) > 0$


Wenn ein Wendepunkt $P(x_p∣y_p)$ gegeben ist, sind die Bedingungen:

$f(x_p)=y_p$<br />
$f''(x_p)=0$

RL-Wendepunkt:<br />
$f'''(x_p) > 0$

LR-Wendepunkt:<br />
$f'''(x_p) < 0$

## Matrix aufstellen

Mit diesen Bedingungen Stellt man dann eine Matrix auf man setzt die Bedingungen in die Funktion oder ihre Ableitungen ein und trägt die Faktoren vor den variable {a,b,c,d,...} und Ergebnisse in die Matrix ein.

Beispiel:
Die Bedingung $f(4)=10$ wird zu $f(4)=a\cdot 4^3+b\cdot 4^2+c\cdot 4+d=10$

In der Matrix würde das dann so aussehen
$\left[\begin{array}{cccc|}
a&b&c&d&E\\\\
64 & 16 &4 & 1 & 10\\\\
...&...&...&...&...
\end{array}\right]$

## Matrix ausrechnen

Diese Matrix lässt man sich dann vom Taschenrechner ausrechnen und setzt die Werte für die Faktoren in $f(x)$ ein.

Der **TI-*n*-spire CX** kann mit `rref` Matrixen lösen. Man muss einfach nur `rref(matrix)` eingeben, wobei `matrix` die Matrix ist. Eine Matrix fügt man mit `menu` > `7` / `Matrix & Vector` > `1` / `Create` > `1` / `Matrix` ein. Man muss dabei dann noch die Anzahl an Zeilen (rows) und Spalten (columns) angeben. Die Anzahl an Zeilen ist die Anzahl an Bedingungen und die Anzahl an Faktoren + 1 für das Ergebnis ($E$)
