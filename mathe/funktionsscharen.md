# Funktionsscharen

Funktionsscharen sind normale Funktionen, mit dem Unterschied, dass sie einen weiteren Parameter haben, welcher auch Formvariable genannt wird. Oft wird hierfür ein $a$ oder ein $t$ verwendet. Meist sorgt diese Formvariable für Verschiebung oder Streckung der Funktion.

Wenn man nun Extremstellen, Wendepunkte oder ähnliches sucht wird man darauf stoßen, dass man für diese keine Werte finden kann, da diese immer von der Formvariable abhängig sind (zumindest meistens, also solange man die Formvariable nicht raus kürzen könnte oder ähnliches). Da kommt die Ortskurve ins Spiel: man sucht eine Funktion auf der alle möglichen Extremstellen bzw. Wendepunkte liegen.

## Ortskurve: Extremstellen

Man berechnet die 1. und 2. Ableitung der Funktion $f(x)$, sucht die Nullstellen der 1. Ableitung und setzt die erhaltenen x-Werte in die 2. Ableitung ein und erkennt daraus ob es sich um einen Hoch- oder Tiefpunkt handelt. Falls die Aufgabe bestimmte Bedingungen vorgibt kann es gut sein, dass man einige von diesen Nullstellen aussortieren kann (z.B. alle Hochpunkte oder alle Tiefpunkte aussortieren oder alle Punkte außerhalb eines Bereiches aussortieren, ...). Nun stellt man die Nullstellen nach der Formvariable um und setzt zu guter letzt die Formvariable in $f(x)$ ein, wodurch dies dann aus der Funktionsgleichung der neuen Funktion verschwindet. Die neue Funktion ist dann die Ortskurve der Extremstellen.

### Beispiel

$f(x, t) = x^3 + t \cdot x + 1$<br />
$f'(x, t) = 3 \cdot x^2 + t$<br />
$f''(x, t) = 6x$

> Notwendige Bedingungen

$f'(x, t) = 0$

$x_1 = \dfrac{+\sqrt{-3 \cdot t}}{3} \text{ für } t \le 0$<br />
$x_2 = \dfrac{-\sqrt{-3 \cdot t}}{3} \text{ für } t \le 0$

> zur Formvariable umstellen ($t$)

$t_1 = -3 \cdot x^2 \text{ für } x \ge 0$<br />
$t_2 = -3 \cdot x^2 \text{ für } x \le 0$

$t_1$ und $t_2$ sind identisch, bis auf ihre Definitionsbereiche, daher kann man diese zusammenlegen und hat damit $t = -3 \cdot x^2$

> in $f(x)$ einsetzen

$O_{ES}(x) = f(x, t) = f(x, -3 \cdot x^2) = x^3 + (-3 \cdot x^2) \cdot x + 1 = 1-2 \cdot x^3$

## Ortskurve: Wendepunkte

Man berechnet die 1., 2. und 3. Ableitung der Funktion $f(x)$, sucht die Nullstellen der 2. Ableitung und setzt die erhaltenen x-Werte in die 3. Ableitung ein und erkennt daraus ob es sich um einen Rechtslink- oder Linksrechts Wendepunkt handelt. Falls die Aufgabe bestimmte Bedingungen vorgibt kann es gut sein, dass man einige von diesen Nullstellen aussortieren kann (z.B. alle Rechtslinkswendepunkte oder alle Linksrechtswendepunkte aussortieren oder alle Punkte außerhalb eines Bereiches aussortieren, ...). Nun stellt man die Nullstellen nach der Formvariable um und setzt zu guter letzt die Formvariable in $f(x)$ ein, wodurch dies dann aus der Funktionsgleichung der neuen Funktion verschwindet. Die neue Funktion ist dann die Ortskurve der Wendepunkte.

### Beispiel

$f(x, t) = x^3 + t \cdot x + 1$<br />
$f'(x, t) = 3 \cdot x^2 + t$<br />
$f''(x, t) = 6x$<br />
$f'''(x, t) = 6$

> Notwendige Bedingungen

$f''(x, t) = 0$

$x_1 = 0$

> zur Formvariable umstellen ($t$)

$t = 0$

Die Formvariable kommt garnicht mehr vor in der Nullstelle, daher kann man alles einsetzen, in diesem Fall einfach eine $0$, egal was man einsetzt dies wird sich raus kürzen im Wendepunkt

> in $f(x)$ einsetzen

$O_{WP}(x) = f(x, t) = f(x, 0) = x^3 + 1$

Wir wissen, dass der Wendepunkt bei $x = 0$ sein muss, daher können wir nun einfach $x = 0$ einsetzen und erhalten $WP(0|1)$ als Wendepunkt, für jedes beliebige $t$
