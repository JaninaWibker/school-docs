# Euklidischer Algorithmus

Mit Hilfe des **euklidischen Algorithmus** lässt sich der ggT zweier Zahlen berechnen. Man stellt immer die Gleichung $a = q \cdot b +r$ auf und sobald man bei $r = 0$ angelangt ist, ist das $r​$ der darüber liegenden Zeile der ggT.

**Beispiel**: $\text{ggT}(77,53)$

```
 a    q    b     r
77  = 1 * 53  + 24
53  = 2 * 24  +  5     // Das vorherige b wird zum a und das r zum b.
24  = 4 *  5  +  4     // Das q und r muss jedes mal neu berechnet werden
 5  = 1 *  4  +  1 <-- ggT = 1
 4  = 4 *  1  +  0     // Ende weil r = 0
```

Nun weiß man das der $\text{ggT}(77,53)=1$ ist, sie also kene Teiler Besitzen.

## Erweiterter euklidischer Algorithmus

Mit Hilfe des **erweiterter euklidischer Algorithmus** lässt sich eine **diophantische Gleichung** bestimmen. Diese **diophantische Gleichung** beschreibt den ggT der beiden Zahlen $a$ und $b$.

Sie hat immer die Form $\text{ggT}(a,b)=x\cdot b + y\cdot a$

**Beispiele**: wie im vorherigen Beispiele also  $\text{ggT}(77,53)$

```
 a    q    b     r
77  = 1 * 53  + 24
53  = 2 * 24  +  5
24  = 4 *  5  +  4
 5  = 1 *  4  +  1 <-- ggT = 1
 4  = 4 *  1  +  0
```

Nach dem wir den normalen euklidischer Algorithmus beendet haben, also $r = 0$ ist, fangen wir mit dem **erweiterter euklidischer Algorithms** an.

```
1 =  1 * 5  - 1  * 4					
  =  1 * 5  - 1  * (24 - 4 * 5)
  =  5 * 5  - 1 * 24
  =  5 * (53 - 2 * 24) - 1 * 24
  =  5 * 53 - 11 * 24
  =  5 * 53 - 11 * (77 - 1 * 53)
  = 16 * 53 - 11 * 77

ggT(77,53) = 16 * 53 - 11 * 77 = 1
```

### Bestimmen des Inversen Elements

Mit Hilfe einer **diophantische Gleichung** welche den ggT zweier Zahlen beschreibt kann man durch eine Modolo Rechnung die inversen Elemente der Zahlen berechnen. Dies gilt aber nur wen der ggT der Zahlen 1 beträgt.

**Beispiel**:

$ggT(77,53) = 16 \cdot 53 - 11 \cdot 77 = 1$



$1 \equiv 16 \cdot \bold{53}-11 \cdot 77 \text{ mod 77}$

$1\equiv 16 \cdot \bold{53} \text{ mod 77}$	$\implies$ **16** ist das Inverse zu **53** im Modul **77**



$1 \equiv 16 \cdot 53-11 \cdot \bold{77} \text{ mod 53}$

$1\equiv -11 \cdot \bold{77} \text{ mod 53}$

$1\equiv 42 \cdot \bold{77} \text{ mod 53}$	$\implies$ **42** ist das Inverse zu **77** im Modul **53**
