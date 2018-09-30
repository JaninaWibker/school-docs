# Multiplikationstabellen

## Multiplikationstabellen

$\Z_n$ ist eine Tabelle mit $n$ Spalten und $n$ Zeilen, dabei wird aber meist  jeweils die erste Zeile/Spalte weg gelassen, da sie ignoriert werden kann. Die Beschriftungen sind somit $1...(n-1)$. Man berechnet jeden Wert mit $a \cdot b \text{ mod } n$, es kann also nur Werte von $O$ bis $n-1$ geben.

**Beispiel**:

![Multiplikationstabelle Z 8](../assets/Mathe-diagrams-Z_8.svg)

Man erkennt einige Besonderheiten:

Es gibt einen Wert für a bzw. b der immer das jeweils andere produziert, also sozusagen ignoriert wird, dieses Element nennt man **neutrales Element**.
Zusätzlich sieht man das es auch Elementenpaare gibt die zusammen das **neutrale Element** produzieren. Diese Elemente sind jeweils das **Inverse Element** zueinander. Dabei ist es immer so, dass das erste a mit dem ersten b, also $(1, 1)$, zueinander invers sind, sowie das letzte a und das letzte b, also $(n-1, n-1)$.



### Teilerfremd (ggT(a, b) = 1)

Wenn 2 Zahlen teilerfremd sind bedeutet das, dass sie bei einer **Primfaktorzerlegung** keine **gleichen Primteiler** vorweisen, somit sind z.B. $4 = 2 \cdot 2$ und $6 = 3 \cdot 2$ **NICHT** teilerfremd, im Gegenteil dazu sind aber z.B. $3$ und $7$ teilerfremd, da sie keine gemeinsamen Primteiler haben (da sie selber ungleiche Primzahlen sind ist dies gegeben).



### Multiplikationstabellen aus Teilerfremden

Es gibt in Multiplikationstabellen sogenannte **Nullteiler**, diese sind Kombinationen aus a und b welche im **Modul n** $0$ ergeben. In der **Kryptographie** werden diese **Nullteiler** aussortiert. Dies erreicht man indem man die Zahlen von $1$ bis $n-1$ einzeln auf teilerfremdheit (gemeinsame Primteiler) zu $n$ überprüft. Man guck also, ob der ggT von $(a, n) = 1$ ist. Falls der ggt nicht $1$ ergibt, wird diese Zahl aussortiert.  Diese neuen validen Werte nutzt man nun für die Multiplikationstabelle $\Z_n^*$. In der Kryptographie wird viel mit $\Z_n^*$ gerechnet, nicht mit dem normalen $\Z_n$.

> $\Z_n^*$ wird als "*Z N Stern*" ausgesprochen

**Beispiel**:

![teilerfremde Multiplikationstabelle Z 8 Stern](../assets/Mathe-diagrams-Z_8_Stern.svg)

Diese neue Tabelle hat nun **keine Nullteiler** mehr, aber auch zusätzlich **Inverse Elemente für jedes Element**. Dies ist für die Kryptographie sehr wichtig.
