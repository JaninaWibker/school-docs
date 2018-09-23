# Square and Multiply

**Square and Multiply** ist eine Efficiente Methode um Potenzen zu Berechen.  Wenn man normal eine Zahl Potenziert benötigt man bei z.B. $a^n$ $n-1$ Multiplikationen. Bei  **Square and Multiply** higegen benötigt man maximal 2 mal die anzahl der Binär stellen der Potenz -2 (meist weniger).

**Beispiel**:

$5^{25} \text{ mod 11}$

> **Square and Multiply** funktioniert auch ohne das modolo allerdings werden die Zahlen mit denen man Rechnte wesentlich höher

Zuerst muss man die potenz in Binär umwandeln.

$25=(11001)_2$

```
1   1   0   0   1
16  81  9   25  5              // Man quadriert das (Moduloierte) vorherige Ergebnis
5   4   9   3   5  mod 11      // Man Rechnet die Ergebnisse Modolo wenn vorhanden

5 * 4         * 5  mod 11 = 1  // Man Multipliziert die zahlen der 1 stellen
```

> Man braucht für $5^{25}$ also nur 6 Multiplikationen anstat die 24 die man Normalerweise bräuchte
