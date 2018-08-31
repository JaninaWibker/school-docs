# Zahlentheorie

## Potenzen

> Zusammenhang zwischen Wurzeln und Potenzen

Im Folgenden wird vorausgesetzt, dass alle Potenzen und Wurzeln existieren:

$\sqrt[n]{a} = a^{\frac{1}{n}}$

$\sqrt[n]{a^m} = a^{\frac{m}{n}}$

$(\sqrt[n]{a})^m = a^{\frac{m}{n}}$

> Multiplizieren und Dividieren von Potenzen

**bei gleicher Basis**:

$a^p \cdot a^q=a^{p+q}$

$\frac{a^p}{a^q}=a^{p-q}$

$(a^m)^n = a^{m \cdot n}$

$a^0 = 1$

$a^{-n} = \dfrac{1}{a^n}$

$a^{\frac{1}{n}} = \sqrt[n]{a}$

**bei gleichem Exponenten**:

$a^p \cdot b^p = (a \cdot b)^p$

$\dfrac{a^p}{b^p} = (\dfrac{a}{b})^p$

## Modulo, Modul & Restklasse

> Modulo

Will man in der Menge der natürlichen Zahlen eine Zahl **a** durch eine Zahl **m** teilen so erhält man einen Rest **r**. Für diesen Rest gilt $0 \le r \le m-1$. Die Modulo-Funktion liefert zu gegebenen Zahlen **a** und **m** gerade diesen Rest **r**. Man schreibt auch:
$a \text{ mod } m = r$
$19 : 4=4 \text{ Rest } 3$ also gilt $19 \text{ mod } 4 = 3$

Für **negative** Zahlen bestimmt man den Positiven Rest indem man ein hinreichend großes Vielfaches von m addiert:
$-47 \text{ mod }5=(-47+50)\text{ mod }5=3$

> Modul, Restklasse

![Modul & Restklasse](../assets/Mathe-diagrams-Page-25.svg)

Die Restklasse ist immer eine Menge von Zahlen, wobei diese Zahlen immer im gleichen Modul den gleichen Rest ergeben. Das bedeutet, dass z.B. im Modul $\mathbb{Z}_5$ die Restklasse $1 = \{..., -4, 1, 6, 11, ... \}$ ist, auch als $\overline{1}$ dargestellt. Wie man sieht sind auch negative Zahlen in einer Restklasse vorhanden. Da die Auflistung als Menge aufwendig ist und man "..." nutzen muss wird oft auch $\overline{r}$ genutzt.

Das Modul $\mathbb{Z_m}$ sind die Reste, die beim Teilen durch m auftreten können. z.B. $\mathbb{Z_5}=\{0;1;2;3;4\}$. Dabei hat jede ganze Zahl ihren Vertreter, die Restklasse. So ist z.B. die Restklasse der **3** im Modul **5** gleich $\overline{3}=\{...;-7;-2;3;8;13;18;23;...\}$

Im Modul $\mathbb{Z_m}$ kann man auf die übliche Art rechnen. Das Ergebnis wird aber wieder in den $\mathbb{Z_m}$ abgebildet.
Die modulo-Funktion ist strukturerhaltend sie ist ein Homomorphismus

**Beispiel**:
$678 + 471 \text{ mod } 5 = 3+1 \text{ mod } 5 = 4$


### Regeln in den Modulen

![neutrales Element, inverses Element & null Element im Model](../assets/Mathe-diagrams-Page-26.svg)

## Primfaktorzerlegung

Jede natürliche Zahl kann als Produkt von Primzahlen dargestellt werden.

Hier bei geht man systematisch die Primzahlen von **2** aufwärts und teilt so oft wie es ohne Rest möglich ist.

**Beispiel**:

$220=2 \cdot 110$

$=2 \cdot 2 \cdot 55$

$=2 \cdot 2 \cdot 5 \cdot 11$

### Größter gemeinsamer Teiler (ggT)

Der *ggT* kann mithilfe der Primfaktorzerlegung bestimmt werden, hierfür multipliziert man einfach die Primfaktoren die in **beiden** Primfaktorzerlegungen vorkommen und ignoriert die anderen Primfaktoren, welche nur in einer Zerlegung auftreten.

**Beispiel**:

$3528=2^3 \cdot 3^2 \cdot 7^2$

$3780=2^2 \cdot 3^3 \cdot 5 \cdot 7$

$ggt(3528,3780)=2^2 \cdot 3^2 \cdot 7=252$

> Eigenschaften des ggT

$\text{Für } a \gt b \text{ und }a,b \varepsilon \mathbb{N} \text{ gilt:}$

$ggT(a,0)=a$

$ggT(a,b)=ggT(a,b)$

$ggT(a,b)=ggT(a-b,a)$

$ggT(a,b)=ggT(a \text{ mod }b,b)$

### Kleinstes gemeinsames Vielfaches (kgV)

Das *kgV* von zwei Zahlen ist die kleinste Zahl, die sich durch die beiden Zahlen teilen lässt.

**Beispiel**:

$12:12;24;26;48;60;...$

$16:16;32;48;64;80;...$

$kgV(12,16)=48$

---

**Satz**:
Für das *kgV* und den *ggT* zweier Zahlen $a$ und $b$ gilt
$kgV(a,b) \cdot ggT(a,b)=a \cdot b$

- Strategien für Modulo von großen Zahlen berechnen, Primfaktorzerlegung & Primzahlen finden
