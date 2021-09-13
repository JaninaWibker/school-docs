# Zero-Knowledge

## Ununterscheidbarkeit

zwei (möglicherweise vom Sicherheitsparameter $k$ abhängige) Verteilungen $X$, $Y$ sind *ununterscheidbar* (geschrieben \stackrel{c}{\approx}), wenn für alle PPT-Algorithmen $A$ die Differenz

$\P(A(1^k, x) = 1 \vert x \leftarrow X) - \P(A(1^k, y) = 1 \vert y \leftarrow Y)$

vernachlässigbar in $k$ ist.

**Intuitiv**: $X$ und $Y$ sind nicht (effizient) unterscheidbar

## Zero-Knowledge Definition 

Ein PK-Identifikationsprotokoll $(\text{Gen}, P, V)$ ist *Zero-Knowledge* (ZK), falls für jeden PPT-Algorithmus $A$ (Angreifer) ein PPT-Algorithmus $S$ (Simulator) existiert, so dass die folgenden Verteilungen ununterscheidbar sind (wobei $(pk, sk) \leftarrow \text{Gen}(1^k)$):

$(pk, \langle P(sk), A(1^k, pk) \rangle)$ und $(pk, S(1^k, pk))$

**Intuitiv**: Interaktionstranskripte simulierbar (wenn man Transkripte nicht frei erfinden kann, wurde wohl doch etwas mitgeteilt, was man nicht nur aus dem public key erfährt)

=> wenn man ein EUF-CMA-sicheres Signaturverfahren nutzt ist einfach die challenge signieren kein Zero-Knowledge verfahren, da somit der Simulator den $sk$ kennen müsste um eine Signatur zu erzeugen


## Commitments

Ein Commitment-Verfahren besteht aus PPT-Algorithmus $\text{Com}$:
- Syntax: $\text{Com}(M, R)$ (mit Eingabe $M \in {\lbrace 0, 1 \rbrace}^{*}$ und explizitem Zufall $R$ für Ausführung, Sicherheitsparameter implizit)
- Ausage: $\text{com} H \text{Com}(M, R)$ ist Commitment für Information $M$

$\text{com}$ gibt eine Information $M$ an, die zu einem späteren Zeitpunkt aufgedeckt werden kann (mit Bekanntgabe von $\text{(M, R)}$) aber seit der Übergabe von $\text{com}$ nichtmehr Veränderbar ist, man hat sich auf den Wert $M$ committed.

Beispielsweise könnte man einfach $\text{Com}(M, R) = H(M, R)$ für Hashfunktion $H$ nehmen.


### Hiding-Eigenschaft

Für beliebige $M, M' \in {\lbrace 0, 1 \rbrace}^{*}$ sind die Verteilungen

$\text{Com}(M, R)$ und $\text{Com}(M', R)$

ununterscheidbar (wobei $R$ unabhängig zufällig; das kann man ansehen als die Verteilung mit festen $M$ bzw. $M'$ über alle möglichen $R$-Werte)

### Binding-Eigenschaft

Für jeden PPT-Angreifer $A$ ist

$P(\text{Com}(M, R) = \text{Com}(M', R') \wedge M \ne M')$

vernachlässigbar in $k$, wobei $(M, R, M', R') \leftarrow A(1^k)$.

> $\text{Com}(M, R) = H(M, R)$: Binding folgt aus $H$-kollisionsresistenz, Hiding nicht ganz klar.

