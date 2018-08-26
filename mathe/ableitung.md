# Ableitung

Die Ableitung einer Funktion **f** ist die Funktion **f'**. Die Ableitungsfunktion beschreibt die Steigung der zugehörigen Funktion **f** in jedem Punkt.
Wenn also die Steigung von **f** negativ ist, ist **f'(x)** auch negativ. Bei einer positiven Steigung von **f** verhält es sich genau so also ist **f'(x)** auch positiv.

## Ableitungen von Funktionen und Teilen von Funktionen

| Regel | $f(x)$ | $f'(x)$ |
| :---- | :----- | :------ |
| Constant | $c$ | $0$ |
| Line | $a \cdot x$ | $a$ |
|  | $x$ | $1$ |
| Exponent | $a^x$ | $ln(a) \cdot a^x$ |
|  | $e^x$ | $e^x$ |
| Logarithm | $ln(x)$ | $\dfrac{1}{x}$ |
| Multiplication by constant | $c \cdot f$ | $c \cdot f'$ |
| Power Rule | $x^n$ | $n \cdot x^{n-1}$ |
| Sum Rule | $f + g$ | $f' + g'$ |
| Difference Rule | $f - g$ | $f' - g'$ |
| Product Rule | $f \cdot g$ | $f' \cdot g + f \cdot g'$ |
| Quotient Rule | $f / g$ | $\dfrac{f' \cdot g - f \cdot g'}{g^2}$ |
| Reciprocal Rule | $\dfrac{1}{f}$ | $-\dfrac{f'}{f^2}$ |
| Chain Rule | $f(g(x))$ | $f'(g(x)) \cdot g'(x)$ |
| Chain Rule (composition of functions) | $f \circ g$ | $(f' \circ g) \cdot g'$ |

| trigonomische Funktionen | $f(x)$ | $f'(x)$ |
| :----------- | :----- | :------ |
| Sinus | $sin(x)$ | $cos(x)$ |
| Cosinus | $cos(x)$ | $-sin(x)$ |
| -Sinus | $-sin(x)$ | $-cos(x)$ |
| -Cosinus | $-cos(x)$ | $sin(x)$ |

## Eigenschaften interpretieren

### Krümmung

> $f''(x) > 0$ bedeutet, dass $f(x)$ **linksgekrümmt** ist<br />
> $f''(x) < 0$ bedeutet, dass $f(x)$ **rechtsgekrümmt** ist

### Extremstellen, Extrema

Die 1. Ableitung zeigt die Steigung an, daher muss im Extrempunkt $f'(x) = 0$ gelten, da die Steigung in einem Extrempunkt 0 beträgt. Die Hoch- und Tiefpunkte von $f(x)$ (Extremstellen) sind also Nullstellen in $f'(x)$.

Bei einem $-$ zu $+$ Vorzeichenwechsel (VZW) in der Nullstelle von $f'(x)$ handelt es sich um einen Tiefpunkt in $f(x)$, bei $+$ zu $-$ Vorzeichenwechsel handelt es sich dann auch um einen Hochpunkt in $f(x)$.

In den meisten Fällen kann man auch die 2. Ableitung nutzen um den Vorzeichenwechsel zu ersetzten. Man setzt die Nullstelle in die 2. Ableitung ein und guckt ob das Ergebnis größer oder kleiner 0 ist, daran kann dann entschieden werden, ob es sich um einen Hoch- oder Tiefpunkt in $f(x)$ handelt. Dies funktioniert aber natürlich nur, wenn man wirklich eine 2. Ableitung bilden kann.

> $f''(x) > 0$ bedeutet, dass $f(x)$ bei x einen **Tiefpunkt** hat<br />
> $f''(x) < 0$ bedeutet, dass $f(x)$ bei x einen **Hochpunkt** hat

| Ableitung | Eigenschaft in $f(x)$ |
| :------------- | :------------- |
| $f'(x) = 0$ | Extremstelle (Hoch- / Tiefpunkt) |
| $- \rightarrow +$ VZW bei $f'(x) = 0$ | Tiefpunkt |
| $+ \rightarrow -$ VZW bei $f'(x) = 0$ | Hochpunkt |
| $f''(x) > 0$ | Tiefpunkt |
| $f''(x) < 0$ | Hochpunkt |

### Wendepunkte

Die 2. Ableitung beschreibt die Krümmung (oder auch die Steigung der Steigung), daher muss im Wendepunkt $f''(x) = 0$ sein. Das kommt daher, dass sich die Funktion an der Stelle von einer z.B. linksgekrümmten zu einer rechtsgekrümmten Funktion ändert. An der Stelle an der dieser Übergang ist kann es keine Krümmung geben, da die Funktion dort weder links- noch rechtsgekrümmt ist.

Die Wendepunkte von $f(x)$ sind Nullstellen in $f''(x)$

Man kann nun wieder den Test mit dem Vorzeichenwechsel machen, dabei kriegt man nun heraus ob es sich um einen Rechts-links Wendepunkt (Hochpunkt zu Tiefpunkt) oder um einen Links-rechts Wendepunkt (Tiefpunkt zu Hochpunkt) handelt.

> $- \rightarrow +$ VZW bei $f''(x) = 0$ bedeutet, dass $f(x)$ bei x einen **RL-Wendepunkt** (HP zu TP) hat<br />
> $+ \rightarrow -$ VZW bei $f''(x) = 0$ bedeutet, dass $f(x)$ bei x einen **LR-Wendepunkt** (TP zu HP) hat

Die gleiche Alternative mit der nächsten Ableitung gibt es wieder, wieder muss man darauf achten, dass es nicht immmer möglich ist dies anzuwenden, z.B. kann es sein, dass eine Funktion keine 3. Ableitung mehr hat oder das diese 0 ergibt.

| Ableitung | Eigenschaften in $f(x) |
| :------------- | :------------- |
| $- \rightarrow +$ VZW bei $f''(x) = 0$ | Wendepunkt (Hochpunkt zu Tiefpunkt; Rechts-links) |
| $+ \rightarrow -$ VZW bei $f''(x) = 0$ | Wendepunkt (Tiefpunkt zu Hochpunkt; Links-rechts) |
| $f'''(x) > 0$ | Wendepunkt (Hochpunkt zu Tiefpunkt; Rechts-links) |
| $f'''(x) < 0$ | Wendepunkt (Tiefpunkt zu Hochpunkt; Links-rechts) |

### Relatives & Absolutes Extremum, Randextreme

**Relative Extrempunkte** (oder auch loakel Extrempunkte) sind Punkte, welche in einem gewissen Abschnitt Hoch- oder Tiefpunkte sind. Sie sind also im Vergleich zu den Werten um sie herum entweder am höchsten oder am niedrigsten.

Im Gegensatz zu relativen Extrempunkten gibt es auch **absolute Extrempunkte**, welche eben nicht die lokalen Eigenschaften von relativen Extrempunkten haben sondern global die höchsten bzw. niedrigsten Punkte darstellen. Jeder absolute Extrempunkt ist auch ein relativer Extrempunkt, da im Vergleich zu den Werten um ihn herum eine Extremstelle darstellt, aber eben nicht nur dort, sondern global auch.

**Randextreme** sind vorhanden, wenn ein Graph abgeschnitten ist. Die Enden eines abgeschnittenen Graphens stellen immer Extremstellen da (solange der Graph nicht konstant ist), werden aber nicht gefunden, wenn man nur nach Nullstellen in der 1. Ableitung sucht. Randextreme können so wie normale Hoch- und Tiefpunkte auch *absolute Extrempunkte* sein.
