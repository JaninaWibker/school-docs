# Primfaktorzerlegung, ggT, kgV


## Primfaktorzerlegung

Jede natürliche Zahl kann als Produkt von Primzahlen dargestellt werden.

Hier bei geht man systematisch die Primzahlen von **2** aufwärts und teilt so oft wie es ohne Rest möglich ist.

**Beispiel**:

$220=2 \cdot 110$

$=2 \cdot 2 \cdot 55$

$=2 \cdot 2 \cdot 5 \cdot 11$

## Größter gemeinsamer Teiler (ggT)

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

## Kleinstes gemeinsames Vielfaches (kgV)

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
