# Gruppen

Eine kleine Ansammlung an Sätzen zu Gruppen.

## Kleiner Satz von Fermat

Für primes $P$ und $M \in \lbrace 1, \dots, P-1 \rbrace$ gilt $M^{P-1} \mod P = 1$

Konsequenz: $\forall M \in \Z_p, \alpha \in \Z : {(M^{P-1})}^{\alpha} \cdot M = M \mod P$

## Satz von Euler

Für alle $a, N \in N$ mit $\text{ggT}(a, N) = 1$ gilt

$a^{\phi(N)} \equiv 1 \mod N$

> Für $N = p$ mit $p$ Primzahl gilt $\phi(p) = p-1$, somit folgt hieraus der kleine Satz von Fermat

## Chinesischer Restsatz

> Es gibt sehr viele verschiedene Formulierungen vom chinesischen Restsatz die alle sehr unterschiedlich aussehen aber anscheinend gleichbedeutend sind.

Sei $N = P \cdot Q$ mit $P, Q$ teilerfremd (bspw. Primzahlen). Dann ist die Abbildung $\mu: \Z_N \to \Z_P \times \Z_Q$ mit $\mu(M) = (M \mod P, M \mod Q)$ bijektiv.

Also: $(X \equiv Y \mod P) \wedge (X \equiv Y \mod Q) \implies X \equiv Y \mod N$

### Inverser chinesischer Restsatz

Da die Funktion $\mu$ laut dem chinesischen Restsatz bijektiv ist gibt es natürlich auch eine Inverse.

$\mu^{-1}(a, b) := (a \cdot Q \cdot (Q^{-1} \mod P) + b \cdot P \cdot (P^{-1} \mod Q)) \mod N$

