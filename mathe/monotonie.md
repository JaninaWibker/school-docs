# Monotonie

Die Monotonie beschreibt wie sich eine Funktion in einem bestimmten Intervall verhält, dabei kann sie in einem Intervall steigen oder fallen. Hierbei wird zwischen strenger Monotonie und nicht strenger Monotonie unterschieden. Der Unterschied ist, dass bei strenger monotonie der Graph im Intervall immer steigen bzw. fallen muss und nicht den gleichen y-Wert mehrmals haben darf.

Die Intervallgrenzen werden mithilfe der 1. Ableitung berechnet, da die Intervallgrenzen die Stellen sind, an denen die Steigung von negativ zu positiv bzw von positiv zu negativ wechselt, also die Nullstellen der 1. Ableitung.

> "normale" (nicht strenge) Monotonie

$f'(x) \ge 0$, bedeutet, dass die Funktion im Intervall **monoton steigend** ist<br />
$f'(x) \le 0$ bedeutet, dass die Funktion im Intervall **monoton fallend** ist

> es wird $\ge$ bzw $\le$ verwendet, damit sind die Nullstellen im Intervall mit inbegriffen (offenes Intervall / inklusiv)

$f'(x) > 0$, bedeutet, dass die Funktion im Intervall **streng monoton steigend** ist<br />
$f'(x) < 0$, bedeutet, dass die Funktion im Intervall **streng monoton fallend** ist

> es wird $>$ bzw $<$ verwendet, damit sind ide Nullstellen im Intervall **nicht** mit inbegriffen (geschlossenes Intervall / exklusiv)

## Methoden zur Berechnung

Wie man sieht muss man hier nach dem Vorzeichenwechsel gucken, es gibt aber noch eine andere Methode, welche meistens klappt. Man kann nämlich die 2. Ableitung nutzen, wie auch bei den Extrempunkten, und damit bestimmen ob es sich um einen Hoch- oder Tiefpunkt handelt. Wenn es ein Hochpunkt ist, dann ist das aktuelle Intervall dort zuende und **streng monoton steigend**, wenn es ein Tiefpunkt ist, dann ist das aktuelle Intervall dort zuende und **streng monoton fallend**

$f''(x) > 0$ bedeutet, dass es sich um einen Tiefpunkt handelt und das Intervall welches bis zu dieser Intervallgrenze geht **streng monoton fallend** ist<br />
$f''(x) < 0$ bedeutet, dass es sich um einen Hochpunkt handelt und das Intervall welches bis zu dieser Intervallgrenze geht **streng monoton steigend** ist

Wenn man die Intervalle definiert hat man immer, außer man hat eine abgeschnittene Funktion, die Intervallgrenzen $(-\infty$ und $\infty)$ jeweils beim ersten oder beim letzten Intervall.

Die Monotonie sollte sich immer zwischen Intervallen abwechseln, da bei jeder Veränderung der Monotonie ein Extrempunkt ist, was dann auch bedeutet, dass sich die Monotonie bei jedem Extrempunkt verändert.

## Beispiel

die Funktion $f(x)$ ist gegeben und es sollen die Intervalle sowie die zugehörigen Monotonien bestimmt werden

$f(x) = x^2$<br />
$f'(x) = 2x$<br />
$f''(x) = 2$

> Nullstellen

$f'(x) = 0 \Longleftrightarrow x = 0$

> Intervalle definieren

$]-\infty;0[$,<br />
$]0;+\infty[$

> Methode 1.: 2. Ableitung (Hochpunkt / Tiefpunkt)

$f''(0) = 2 > 0 \longrightarrow$ Tiefpunkt

> zugehörige Monotonie notieren

$]-\infty;0[$ **streng monoton fallend**<br />
$]0;+\infty[$ **streng monoton steigend**

> Methode 2.: Vorzeichenwechsel

> beliebigen Punkt pro Intervall wählen, welcher in jeweiligen Intervall ist und diesen dann in $f'(x)$ einsetzten (hier $-1$ und $+1$)

$f'(-1) = -2 < 0 \longrightarrow$ **streng monoton fallend**<br />
$f'(+1) = +2 > 0 \longrightarrow$ **streng monoton steigend**

Welche Methode man wählt hängt von persönlicher Preferenz, aber auch davon ob es möglich ist die 2. Ableitungsmethode anzuwenden ab, da dies z.B. nicht der Fall ist, wenn es keine 2. Ableitung gibt.
