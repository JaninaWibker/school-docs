# IND-CPA - Indistinguishability under Chosen-Plaintext Attacks

Bei einem IND-CPA-sicheren Verfahren kann ein polynomieller Angreifer $A$ die Chiffrate von selbstgewählten Klartexten nicht unterscheiden.
Der Angreifer wählt 2 Nachrichten $M_0$, $M_1$ gleicher Länge, eines davon wird zufällig ($M_b$) vom Herausforderer $C$ verschlüsselt und zurückgeschickt zum Angreifer.
Dieser kann nun - solange das Verfahren wirklich IND-CPA sicher ist - nur mit einer vernachlässigbar kleinen Wahrscheinlichkeit erkennen, welcher seiner beiden Klartexte verschlüsselt wurde ($b' = b$).

**Definition**:

Betrachte PPT-Algorithmus $A$ und Herausforderer $C$ wobei $C$ einen Schlüssel $K$ zufällig gleichverteilt wählt. $A$ hat Zugriff auf ein $\text{ENC}(K, \cdot)$-Orakel $O$.

- $A$ kann sich zu jedem Zeitpunkt jedes beliebige $M$ vom Orakel verschlüsseln lassen (nur Poly oft, da PPT Algorithmus)
- $A$ wählt Nachrichten $M_0$ und $M_1$ gleicher Länge und schickt beide an $C$.
- $A$ erhält $C^{*} := \text{ENC}(K, M_b)$ mit $b \in \lbrace 0, 1 \rbrace$ zufällig gleichverteilt von $C$ gewählt.
- $A$ gewinnt, wenn er $b$ korrekt errät

Ein symmetrisches Verfahren ($\text{ENC}$, $\text{DEC}$) heißt IND-CPA-sicher, wenn der Vorteil des PPT-Algorithmus gegenüber dem Raten einer Lösung, also $\P(A \text{ gewinnt}) - \frac{1}{2}$, für alle PPT-Algorithmen $A$ vernachlässigbar im Sicherheitsparameter $k$ ist.

**Beweisschema**:

> **Warning**: Das ist alles irgendwie falsch herum, aber das passt warum auch immer trotzdem.

Die meisten Beweise sind Reduktionen von einem Angreifer auf das zu prüfende Verfahren auf einen Angreifer für ein bekanntes IND-CPA sicheres Verfahren.

Baue einen Angreifer $B$ für $\text{SKE}'$ aus einem Angreifer $A$ für $\text{SKE}$ wie folgt:

```

C     SKE       SKE'      O
|     / A       / B       |
|      |         |        |  /----------------\
|      |    M    |        |--| Poly oft darf  |
|      |<--------|        |  | Orakel gefragt |
|   * work *     |        |--| werden (von A) |
|<-----|         |        |  \----------------/
|  C*  |         |        |
|----->|   C*    |        |
|      |-------->|        |--/---------------\
|      |    b    |        |  | wieder fragen |
|  b   |<--------|        |--\---------------/
|<-----|         |        |
```

Hierbei ist nun der Aufbau eigentlich falsch herum aber aus unerklärbaren Gründen ist er doch richtig rum.

Beim Beweis muss man davon ausgehen, dass man $B$ gegeben hat (auch wenn man *eigentlich* davon ausgeht, dass man $A$ hat und daraus $B$ baut) und daraus folgern, dass man wenn man $B$ gegeben hat auch einen Angreifer $A$ auf $\text{SKE}$ hat, was aber nicht geht da dies schon IND-CPA sicher ist $\implies$ Angreifer $B$ auf $\text{SKE}'$ kann es nicht geben.
Hierbei ist alles irgendwie falsch herum aber das kann man anscheinend wohl ignorieren.

> Bei IND-CPA ist gefordert, dass $\vert M_0 \vert$ = $\vert M_1 \vert$ gilt, es ist aber nicht gefordert, dass $M_0$ bzw. $M_1$ frisch sind $\implies$ alle Verfahren die diese "frische" nicht irgendwie selbst durch Zufall, Counter o.ä. implementieren sind automatisch nicht IND-CPA sicher. Ein Beispiel dafür ist der RSA ohne zufälliges padding.
