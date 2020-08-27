# Jordannormalform

Die Jordannormalform (oder Jordan'sche Normalform bzw. *JNF*) $\tilde{A}$ einer Matrix $A$ ist eine Ähnlichkeitsinvariante, genau so wie
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

Man kann $\tilde{A}$ nur für Matrizen $A$ bestimmen, wessen charakteristisches Polynom vollständig in Linearfaktoren zerfällt. Theoretisch
kann man auch den Körper, falls er nicht schon $\C$ ist, zu $\C$ erweitern und somit immer das Polynom vollständig in Linearfaktoren aufteilen.

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
  $\min \lbrace e \in \N_0 \\; \vert \\; \rank((A-\lambda\id)^e) = \rank((A-\lambda\id)^{e+1}) \rbrace$ ist.

Die Länge der anderen Jordankästchen ist nicht so leicht bekannt, kann aber natürlich leicht auf nur wenige Werte beschränkt werden
durch andere bekannte Werte.

Zudem gibt es 2 Formeln womit man iterativ die Anzahl der Jordankästchen einer bestimmten Länge errechnen kann.

- **Kern-Formel**: Sei $a_d = \dim \ker((A-\lambda\id)^s)$<br />
  $m_d(\lambda) = 2a_d - a_{d-1} - a_{d+1}$
- **Rang-Formel**: Sei $b_d = \rank((A - \lambda\id)^d)$<br />
  $m_d(\lambda) = b_{d-1} - 2b_{d} + b_{d+1}$

Somit gibt es dann $m_d(\lambda)$ Jordankästchen der Länge $d$ zu $\lambda$.

## Berechnung der JNF

Das erste was man tut ist das **charakteristische Polynom** berechnen. Dies muss dann in Linearfaktoren zerfallen, sodass man die
Eigenwerte und ihre algebraischen Häufigkeiten einfach ablesen kann.

Dann muss man die für jeden Eigenwert $\lambda$ den Kern von $(A-\lambda\id)^e$ berechnen für jedes $e \in [1, \mu_{a_\lambda}]$
womit man dann schlussendlich eine Basis für den Hauptraum hat, welche alle Basisvektoren der vorherigen $e$'s enthält (*Hauptraum
berechnen mit Ergänzung der Basisvektoren*).

> Falls der Eigenraum gleich dem Hauptraum ist, also die geometrische Vielfachheit gleich der algebraischen, dann ist $A$ sogar diagonalisierbar
> und die JNF hat nur Jordankästchen der Länge $1$ womit die JNF gleich der diagonalisierten Version von $A$ ist.

Damit kennt man jetzt die Länge der Jordanblöcke und die Anzahl der Jordankästchen zu den jeweiligen Eigenwerten. In vielen Fällen reicht
das schon aus um die JNF zu bestimmen oder zumindest auf nur eine Hand voll Möglichkeiten zu reduzieren.

Falls man noch nicht eindeutig weiß wie die JNF aussehen muss muss man sich nun eine der beiden Formeln nehmen, welche einem iterativ
alle $m_d(\lambda)$ berechnet (also die Anzahl an Jordankästchen zum Eigenwert $\lambda$ mit der Länge $d$; hierfür muss man alle $d$
durchgehen, bis man exakt sagen kann, wie die JNF aussieht).

Danach sollte man in der Lage sein die JNF aufzustellen. Hierbei ist die Konvention, dass die Größten Jordankästchen zuerst im Jordanblock
kommen.

## Jordanbasis

Was nun noch wichtig ist, ist zu wissen, wie man die Basiswechselmatrizen $S^{-1}$ und $S$ berechnet, sodass $\tilde{A} = S^{-1} \cdot A \cdot S$ ist.

Man berechnet die Jordanbasis stückweise für jedes Jordankästchen. Sei hierbei jetzt $d_i$ die Länge des $i$-ten Jordankästchens. Man kriegt insgesamt
pro Jordankästchen dann $d_i$ Basisvektoren. Sei $\lambda_j$ der Eigenwert zu diesem Jordankästchen.

Dann muss für die Basisvektoren $b_{o+1}, \dots, b_{o + d_i}$ (wobei $o$ einfach einen Offset repräsentiert) genau gelten, dass:

$$b_{o+1}, \\; (A-\lambda_j) \cdot b_{o+1}, \\; (A-\lambda_j) \cdot b_{o+2}, \dots \ne 0$$

Dies erreicht man indem man $b_{o+1}$ aus $\ker((A-\lambda)^{d_i}) = \K \setminus \ker((A-\lambda_j)^{d_i-1}) \setminus \langle b_k \\; \vert \\; k < o \rangle $ wählt.
Danach kann man für die folgenden Basisvektoren bis einschließlich $b_{o+d_i}$ einfach $b_2 = (A-\lambda_j)^1 \cdot b_1, \\; b_3 = (A-\lambda_j)^2 \cdot b_1, \\; \dots$ rechnen.

Dies tut man für alle Jordankästchen und hat dann schlussendlich alle Basisvektoren von $b_0$ bis $b_n$ mit der gewollten Eigenschaft, dass innerhalb
eines Jordankästchens immer $(A-\lambda_j)^e \cdot b_{o+1} \ne 0$ für alle $e \in [0, d_i-1]$ gilt.

Somit hat man dann ein $S = ( \\; b_1 \\; \vert \\; \dots \\; \vert \\; b_n \\; )$.
