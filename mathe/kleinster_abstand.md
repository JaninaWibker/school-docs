# kleinster Abstand

Beim kleinsten Abstand geht es darum den minimalen Abstand zwischen einer Funktion und einem Punkt oder einer weiteren Funktion zu finden (bei einer zweiten Funktion muss dieser Abstand dann aber vertikal verlaufen, er kann nicht in einem anderen Winkel verlaufen). Diese Methode ist nicht nur auf den kleinsten Abstand beschränkt, man kann mit ihr auch Problemlos den größten Abstand errechnen.

## kleinster Abstand zu einem Punkt

Man definiert sich zunächst eine Funktion, welche einem den Abstand zwischen 2 Punkten berechnet mithilfe vom Satz des Pythagoras, wir nennen sie $\text{entf}$.

Diese Funktion nimmt 4 Argumente, die x und y Positionen der beiden Punkte
<br />
<br />
$$\text{entf}(a_x, a_y, b_x, b_y) = \sqrt{(a_x - b_x)^2 + (a_y - b_y)^2}$$
<br />
Wenn man nun eine Funktion $f(x)$ und einen Punkt $P(x_p, y_p)$ gegeben hat und den minimalen Abstand berechnen soll setzt man zunächst beides in die $\text{entf}$ Funktion ein

$\text{entf}_f(x) = \text{entf}(x, f(x), x_p, x_y)$

Danach leitet man diese neu entstandene $\text{entf}_f$ Funktion ab und sucht ihre Nullstellen, die Existenz von Nullstellen ist die notwendige Bedingung

> notwendige Bedingung

$\text{entf}_f'(x) = 0 \implies x_1 = ..., x_2 = ..., ...$

danach überprüft man ob es sich bei den Nullstellen um Hoch- oder Tiefpunkte handelt, dies ist die hinreichende Bedingung

> hinreichende Bedingung

$\text{entf}_f''(x_n) > 0 \implies \text{Tiefpunkt}$<br />
$\text{entf}_f''(x_n) < 0 \implies \text{Hochpunkt}$

Da man eventuell mehrere Hochpunkte bzw. Tiefpunkte hat muss man diese miteinander vergleichen um den absolute Hochpunkt bzw Tiefpunkt zu finden. Die Randpunkte bei einer abgeschnittenen Funktion sollten auch nicht vernachlässigt werden.

## kleinster Abstand zu einer anderen Funktion

Hierbei nutzt man nicht die $\text{entf}$ Funktion, sondern, da man nur den kleinsten vertikalen Abstand sucht, einfach die differenz der beiden Funktionen. Hierfür gehen wir fast gleich vor wie beim Punkt: wir definieren uns eine Funktion, leiten sie ab und suchen die Tiefpunkte bzw. Hochpunkte und vergleichen diese.
<br />
<br />
$$\text{diff}(a, b) = |a-b|$$
<br />
Wir gehen davon aus das wir 2 Funktionen $f(x)$ und $g(x)$ gegeben haben.

$\text{diff}_{f, g}(x) = \text{diff}(f(x), g(x))$

> notwendige Bedingung

$\text{diff}_{f, g}'(x) = 0 \implies x_1 = ..., x_2 = ..., ...$

> hinreichende Bedingung

$\text{diff}_{f, g}''(x_n) > 0 \implies \text{Tiefpunkt}$<br />
$\text{diff}_{f, g}''(x_n) < 0 \implies \text{Hochpunkt}$

Da man eventuell mehrere Hochpunkte bzw. Tiefpunkte hat muss man diese miteinander vergleichen um den absolute Hochpunkt bzw Tiefpunkt zu finden. Die Randpunkte bei einer abgeschnittenen Funktion sollten auch nicht vernachlässigt werden.
