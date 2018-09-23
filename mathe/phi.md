# Eulersche Phi-Funktion

Die **Eulersche Phi-Funktion** gibt für einen gegebenen Wert $n$ die **Anzahl an teilerfremden Elementen im Modul $n$** an.

$\varphi(n) := \forall a \in [1, n) \mid ggT(a, n) = 1$

## Regeln für Phi

$\varphi(p \mid p \text{ Primzahl}) = p - 1$

> Wenn $p$ eine Primzahl ist gilt, dass $\varphi(p) = p - 1$ ist.

$\varphi(a \cdot b \mid ggT(a, b) = 1) = \varphi(a) \cdot \varphi(b)$

> Wenn $a$ und $b$ teilerfremd sind gilt, dass $\varphi(a \cdot b) = \varphi(a) \cdot \varphi(b)$ ist.

$\varphi(p^n \mid p \text{ Primzahl}) = p^{n-1} \cdot (p-1) = p^n - p^{n-1}$

> Wenn $p$ eine Primzahl ist gilt, dass $\varphi(p^n) = p^{n-1} \cdot (p-1) = p^n - p^{n-1}$ ist.

$\varphi(n \mid n > 2)  \text{ mod } 2 = 0$

> Wenn $n$ größer als $2$ ist, ist $\varphi(n)$ immer gerade.



**Vorgehensweise zum berechnen von  $\bold{\varphi(n)}$**:

- `Primfaktorzerlegung` für $n$ machen

- Für jeden Primfaktor (gleiche Primfaktoren werden gruppiert zu $p^e$)  die `3. Regel` anwenden. Falls keine gleichen Primfaktoren gruppiert werden $p^1$ verwenden

- Da immernoch alle Primfaktoren bzw. Ergebnisse der 3. Regel teilerfremd sind nun die `2. Regel` anwenden

- Die 1. Regel muss nicht angewandt werden, da sie durch die 3. Regel hergeleitet werden kann und die 3. Regel somit auch schon die 1. Regel ausführt hat.

> `Primfaktorzerlegung` > `3. Regel` > `2. Regel`



**Beispiele**:

$\varphi(49) = \varphi(7^2) = 7^{2} - 7^{2-1} = 49 - 7 = 42$

$\varphi(60) = \varphi(2^2 \cdot 3 \cdot 5) = \varphi(2^2) \cdot \varphi(3) \cdot \varphi(5) = (2^2 - 2^1) \cdot (3-1) \cdot (5-1) = 2 \cdot 2 \cdot 4 = 16$

$\varphi(1800) = \varphi(5^2 \cdot 3^2 \cdot 2^3) = (5^2 - 5^1) \cdot (3^2 - 3^1) \cdot (2^3 - 2^2) = 20 \cdot 6 \cdot 4 = 480$

$\varphi(5188) = \varphi(2^2 \cdot 1297) = (2^2 - 2^1) \cdot (1297^1 - 1297^0) = 2 \cdot 1296 = 2592$



## Satz von Euler / Eulerscher Satz

Potenziert man irgendein Element $a$ von $\Z_n^*$ mit der Anzahl der Elemente von $\Z_n^*$ so erhält man immer das Ergebnis $1$.

Es gilt $a^{\varphi(n)} \equiv 1 \text{ mod } n$



## Kleiner Satz von Fermat

Für eine Primzahl ist $\Z_n^* = [1, p-1] \in \N$, denn alle diese Zahlen sind teilerfremd zu $p$. Damit hat der **Eulersche Satz** als Folgerung

$p \text{ Primzahl } \implies a^{p-1} \equiv 1 \text{ mod } p$ für alle $a$ mit $0 < a < p$



## Potenzieren in $\bold{Z_n^*}$

In den Exponenten rechnet man modulo $\varphi(n)$

$a \in \Z_n^* \implies a^{k \cdot \varphi(n)+r} \equiv a^r \text{ mod } n$

> Dies kann zur manuellen Ausrechnung von $a^b \text{ mod } n$ verwendet werden um dies zu vereinfachen, da man den optimalen Teiler für den Exponenten erhält.
