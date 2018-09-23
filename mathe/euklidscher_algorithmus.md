# Euklidscher Algorithmus

Mit Hilfe des **euklidischen Algorithmus** lässt sich der ggT zweier Zahlen Berechen. Man stellt immer die gleichung $a = q \cdot b +r$ auf sobald man bei r = 0 angelangt ist, ist das r der darüber liegenden Zeile der ggT.

**Beispiel**:$ ggT(77,53)$

```
 a    q    b     r
77  = 1 * 53  + 24
53  = 2 * 24  +  5     // Das vorherige b wird zum a und das r zum b.
24  = 4 *  5  +  4     // Das q und r muss jedes mal neu berechnet werden
 5  = 1 *  4  +  1 <-- ggT = 1
 4  = 4 *  1  +  0     // Ende weil r = 0
```

Nun weiß man das der $ggT(77,53)=1$ ist, sie also kene Teiler Besitzen.

## Erweiterter euklidischer Algorithmus

Mit Hilfe des **erweiterter euklidischer Algorithmus** lässt sich eine **diophantische Gleichung** bestimmen. DIese **diophantische Gleichung** bescreibt den ggT dier beiden Zahlen a und b.

Sie hat immer die Form $ggt(a,b)=x\cdot b + y\cdot a$

**Beispile**: wie im vorgerigen Beispile also  $ggT(77,53)$

```
 a    q    b     r
77  = 1 * 53  + 24
53  = 2 * 24  +  5
24  = 4 *  5  +  4
 5  = 1 *  4  +  1 <-- ggT = 1
 4  = 4 *  1  +  0
```

Nach dem wir den normalen euklidischer Algorithmus beendet haben also $r = 0$ ist fangen wir mit dem  **erweiterter euklidischer Algorithms** an.

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

Mit hilfe einer **diophantische Gleichung** welche den ggT zweier Zahlen beschreibt kann man durch eine Modolo rechnung die inversen Elemente der Zahlen berechen. Dies gilt aber nur wen der ggT der zahlen 1 beträgt.

**Beispiel**:

$ggT(77,53) = 16 \cdot 53 - 11 \cdot 77 = 1$



$1 \equiv 16 \cdot \bold{53}-11 \cdot 77 \text{ mod 77}$

$1\equiv 16 \cdot \bold{53} \text{ mod 77}$	$\implies$ **16** ist das Inverse zu **53** im Modul **77**



$1 \equiv 16 \cdot 53-11 \cdot \bold{77} \text{ mod 53}$

$1\equiv -11 \cdot \bold{77} \text{ mod 53}$

$1\equiv 42 \cdot \bold{77} \text{ mod 53}$	$\implies$ **42** ist das Inverse zu **77** im Modul **53**
