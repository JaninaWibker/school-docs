# Jordannormalform

Die Jordannormalform (oder Jordan'sche Normalform bzw. *JNF*) einer Matrix $A$ ist eine Ähnlichkeitsinvariante, genau so wie
die Diagonalisierte bzw. Trigonalisierte Version einer Matrix.

Sie sieht diesen beiden einigermaßen ähnlich in der Hinsicht, dass sie viele Nullen hat und sich rund um die Hauptdiagonale eigentlich
alles abspielt. Die Jordan'sche Normalform ist bis auf Reihenfolge der Jordankästchen eindeutig.

**Beispielsweise** kann eine JNF folgendermaßen aussehen:

$$
\text{JNF}(A) =
\begin{pmatrix}
  \lambda &       1 & 0   &       0 & 0 \\\\
  0       & \lambda & 0   &       0 & 0 \\\\
  0       &       0 & \mu &       0 & 0 \\\\
  0       &       0 & 0   & \varphi & 1 \\\\
  0       &       0 & 0   &       0 & \varphi 
\end{pmatrix}
$$

## Jordankästchen

Eine Jordan'sche Normalform besteht aus Jordanblöcken, welche wiederrum aus Jordankästchen bestehen. Jeder Eigenwert hat mehrere
Jordankästchen, welche alle eine gewisse (nicht unbedingt übereinstimmende) Länge haben, welche man mit $d$ bezeichnet.

$$
J_d(\lambda) := \lambda \cdot I_d + J_d(0) = \overbrace{\begin{pmatrix}
  \lambda &       1 &         &        &         &         \\\\
  0       & \lambda & 1       &        & \dots   &         \\\\
          &       0 & \lambda &        &         &         \\\\
          &         &         & \ddots &         &         \\\\
          & \vdots  &         &        & \lambda &       1 \\\\
          &         &         &        &       0 & \lambda 
\end{pmatrix}}^{d} \in \R^{d \times d}
$$

> $J_d$ ist ein Jordankästchen der Länge $d$ zum Eigenwert $\lambda$.

Also eine Matrix mit $\lambda$ auf der Hauptdiagonalen und alles $1$en darüber. Es ist theoretisch egal ob man die
$1$en über oder unter der Hauptdiagonalen schreibt, dies wird oft von Person zu Person unterschiedlich sein, macht
aber rechnerisch nie einen Unterschied

## Jordanblock

Ein Jordanblock ist der Zusammenschluss aller Jordankästchen zu einem bestimmten Eigenwert zu einer einzigen Matrix.
Hierfür schreibt man alle Jordankästchen als Diagonaleinträge in eine Matrix und erhält somit den Jordanblock zum Eigenwert $\lambda$

Sei $n$ die Anzahl der Jordankästchen zum Eigenwert $\lambda$

$$
D_i = \text{diag}(J_{d_1}(\lambda), J_{d_2}(\lambda), \dots, J_{d_n}(\lambda))
$$

Hierbei steht $D_i$ für den $i$-ten Jordanblock von $\text{JNF}(A)$.

Aus Konvention sortiert man die Jordankästchen innerhalb des Jordanblocks meistens absteigend nach ihrer Länge.

## Zusammenhang

Aktuell wirkt es noch so, als ob einem viele wichtige Informationen noch fehlen um eine JNF zu konstruieren. Diese Informationen
kommen jetzt.

Sei $CP_\Phi(X) = \displaystyle{\prod_{\lambda \in \text{Spec}(\Phi)} (X-\lambda)^{\mu_a(\lambda)}}$ und gäbe es $l$ Eigenwerte.

- Länge des Jordanblock $D_i$ zu $\lambda_i$ ist die **Dimension des Hauptraums** $H(A, \lambda_i)$, was auch gleich der
  algebraischen Vielfachheit $\mu_{a_i}$ ist.
- Die Anzahl der Jordankästchen ist die **Dimension des Eigenraums** $\text{Eig}(A, \lambda_i)$.
- Die Länge des längsten Jordankästchen ist die Vielfachheit von $(X-\lambda)$ im **Minimalpolynom**, was zudem gleich
  $\min \lbrace e \in \N_0 \\; \vert \\; \text{rank}((A-\lambda\text{Id})^e) = \text{rank}((A-\lambda\text{Id})^{e+1}) \rbrace$ ist.

Die Länge der anderen Jordankästchen ist nicht so leicht bekannt, kann aber natürlich leicht auf nur wenige Werte beschränkt werden
durch andere bekannte Werte.

Zudem gibt es eine Formel womit man iterativ die Anzahl der Jordankästchen einer bestimmten Länge errechnen kann:

$m_d(\lambda) = \text{rank}((A - \lambda\text{Id})^{d-1}) - 2 \cdot \text{rank}((A - \lambda\text{Id})^d) + \text{rank}((A-\lambda\text{Id})^d)$

Somit gibt es dann $m_d(\lambda)$ Jordankästchen der Länge $d$ zu $\lambda$.

## Berechnung

**TODO**
