# Isometrien

Eine Isometrie ist eine abstandserhaltende Abbildung zwischen zwei metrischen Räumen.

Eine Abbildung $\Phi: X \to Y$ ist eine Isometrie $\iff \forall x_1, x_2 \in X: d(x_1, x_2) = e(\Phi(x_1), \Phi(x_2))$

wobei $d$ die Distanz in $X$ ist und $e$ die Distanz in $Y$. Eine Isometrie ist **immer injektiv**. $\text{Iso}(X, d)$
bezeichne die Menge aller invertierbaren Isometrien von $X$ nach $X$. Dies ist eine Teilmenge der symmetrischen Gruppe von $X$.

$\text{Iso}(X, d)$ ist bezüglich der Komposition und Inversenbildung abgeschlossen.

Beispielsweise ist $f: \R \to \R, \\; f(x) = x+1$ Abstandserhaltend, da für alle $x, y \in R$ gilt,
dass $d(x, y) = d(f(x), f(y))$ ist.

Man interessiert sich auch viel für eine besondere Teilmenge der Isometrien, und zwar der **linearen Isometrien**. Wie der
Name schon sagt sind diese auch linear. Lineare Isometrien sind bei weitem seltener als andere. Es gibt nur einige
fundamentale Bausteine aus denen man lineare Isometrien zusammensetzen kann. Dazu gehören neben der **Identität** nur
**Drehungen** und **Spiegelungen**.

$$\Phi \\; \text{ist lineare Isometrie} \\; \iff \forall x,y \in V: \\; \langle x, y \rangle_V = \langle \Phi(x), \Phi(y) \rangle_W$$

Generell redet man sehr oft (implizit) über $\R^n$ anstatt über beliebige $\K$. Dies kann man aber auch tun, da andere
VR isomorph zu einem bestimmten $\R^n$ sind. Gelegentlich redet man auch über $\C$.


### Koordinatenabbildung

Sei $V$ ein n-dim. eukl. VR und $B$ eine ONB von $V$. Dann gilt, dass die Koordinatenabbildung $D_B: V \to \R^n$
(siehe [Fourier-Formel](./skalarprodukte.md), $B$ ONB $\implies D_B(v) = (\langle v, b_i \rangle)_{i \le i \le n} \in \R^n$)
das Skalarprodukt von $V$ in das Standardskalarprodukt umwandelt. Somit ist dann $D_B$ eine lineare Isometrie zwischen
$V$ und $\R^n$.


### Drehkästchen

Man stellt jegliche Drehungen die eine lineare Isometrie enthält als ein sogenanntes **Drehkästchen** dar. Ein Drehkästchen
ist eine $2 \times 2$-Matrix, welche eine Drehung um $\varphi$ repräsentiert.

$$D_{\varphi} = \begin{pmatrix}
  \cos\varphi & -\sin\varphi \\\\
  \sin\varphi &  \cos\varphi
\end{pmatrix}$$

> Drehkästchen zum Winkel $\varphi$


### Kriterium für lineare Isometrien

$V, W$ VR mit Skalarprodukt, $\Phi: V \to W$ linear, dann gilt:

- $\Phi$ ist eine lineare Isometrie $\iff$ jedes Orthonormalsystem aus $V$ wird injektiv auf ein Orthonormalsystem aus
  $W$ abbildet.
- $V$ endlich dim: <br />
  $\Phi$ ist eine lineare Isometrie $\iff$ mindestens eine ONB von $V$ bildet auf ein Orthonormalsystem ab.

Für Endomorphismen gilt des weiteren: Sei $B$ eine ONB (**wichtig**)

- $\Phi$ ist lineare Isometrie $\iff$ $\Phi(B)$ ist eine ONB von $V$.
- $\Phi$ ist lineare Isometrie $\iff$ $D_{BB}(\Phi)$ ist orthogonale (/unitäre) Matrix

Daraus folgt, dass lineare Isometrien eines endlich dim. euklidischen VR entweder $\det\Phi = \pm 1$ haben,
da $\det A \\; A \in O(n)$ immer $\pm 1$ ist. Man nennt Isometrien mit $\det = 1$ auch *eigentliche Bewegungen*.


### invariante Komplemente, Eigenwerte

Sei $\Phi: V \to V$ eine lineare Isometrie eines endlich dim. euklidischen VR und sei $U \le V$ ein $\Phi$-invarianter UVR.
Dann ist auch $U^{\bot}$ $\Phi$-invariant. Das folgt daraus, dass $\Phi$ invertierbar ist:

$\Phi$ invertierbar $\implies U = \Phi(U)$

Somit kann man ein bel. $u \in U$ schreiben als $u = \Phi(\tilde{u}), \tilde{u} \in U$. Somit folgt für $v \in U^{\bot}$:

$$\langle \Phi(v), u \rangle = \langle \Phi(v), \Phi(\tilde{u}) \rangle = \langle v, \tilde{u} \rangle = 0$$

Da $u$ beliebig war folgt $\Phi(v) \in U^{\bot}$ und somit ist auch $U^{\bot}$ $\Phi$-invariant.


**Eigenwerte**

Der Betrag jedes Eigenwertes $\lambda$ einer linearen Isometrie $\Phi$ ist $1$. Also sind erlaubte Eigenwerte für $\K = \R$
genau $\lbrace 1, -1 \rbrace$ und für $\K = \C$ genau $\lbrace 1, -1, i, -i \rbrace$.

Für alle $V \ne \lbrace 0 \rbrace$ gibt es Isometrien, so dass jeder mögliche Eigenwert auch mindestens einmal verwendet wurde.


## Isometrienormalform

Sei $\Phi: V \to V$ eine lineare Isometrie und $\K = \R$ oder $\K = \C$

- $\K = \C$: Da über $\C$ das charakteristische Polynom vollständig in Linearfaktoren zerfällt besitzt $V$ eine ONB aus
  Eigenvektoren, wodurch dann $V$ vollständig (orthogonal) diagonalisierbar ist.<br />
  Sei $A \in U(n)$ eine unitäre Matrix, dann gibt es eine unitäre Matrix $S \in U(n)$, sodass $S^{-1}AS$ eine
  Diagonalmatrix ist.<br />
- $\K = \R$: Das charakteristische Polynom zerfällt nicht unbedingt vollständig in Linearfaktoren, aber zumindest Teilweise,
  somit kann man $V$ als direkte Summe von paarweise orthogonalen ein- oder zweidimemsionalen $\Phi$-invarianten UVR schreiben.
  Da alle Eigenwerte Betrag $1$ haben gilt, dass die eindimensionalen UVR unter $\Phi$ einfach eine Multiplikation mit $\pm 1$
  sind. Auf den zweidimensionalen Summanden wird $\Phi$ durch ein Drehkästchen $D_{\Phi}$ mit Winkel $\Phi$ beschrieben.<br />
  Sei $A \in O(n)$ eine orthogonale Matrix, $d_{+} = \dim\text{Eig}(A, 1)$, $d_{-} = \dim\text{Eig}(A, -1)$ und
  $l = \tfrac{1}{2}(n - d_{+} - d_{-}) \in \N_0$ (also die Hälfte der noch übrig gebliebenen Dimensionen). Dann gibt es
  $\varphi_1, \dots, \varphi_l \in (0, \pi) \subseteq \R$ und eine orthogonale Matrix $S \in O(n)$, sodass $S^{-1}AS$ die
  folgende Form hat<br />

  $$\begin{pmatrix}
    I_{d_{+}}  & & & &    \\\\
    & -I_{d_{-}} & & &    \\\\
    & & D_{\varphi_1} & & \\\\
    & & & \ddots &        \\\\
    & & & & D_{\varphi_l}
  \end{pmatrix}$$

## Hilfssatz zur Berechnung der Isometrienormalform

> besonders Klausurrelevant

Es kann bei passenden Matrizen vorkommen, dass man den folgenden Trick zur Berechnung der Isometrienormalform anwenden
kann um sich die Arbeit um einiges zu erleichtern.

Sei $A \in O(n)$ eine orthogonale Matrix. Es soll die Isometrienormalform $D := S^{-1}AS$, sowie $S$ berechnet werden.

Es gilt

$$D^T = (S^{-1}AS)^T = S^TA^T(S^{-1})^T = (S^{-1}A^TS)$$

> (dies geht nur, da $S \in O(n)$, was aber von $A \in O(n)$ impliziert wird).

Mit dem Distributivgesetz folgt

$$D + D^T = S^{-1}(A + A^T)S$$

Dies ist eine Diagonalmatrix, da sich die Drehkästchen ($D_{\varphi} + D_{\varphi}^T$) auf Diagonalmatrizen reduzieren.

Die Eigenwerte von $D + D^T$ und $A + A^T$ stehen direkt in Relation mit den Eigenwerten von $A$ und $A^T$:

- Wenn $A + A^T$ den Eigenwert  $2$ hat müssen $A$ und $A^T$ beide den Eigenwert  $1$ haben.
- Wenn $A + A^T$ den Eigenwert $-2$ hat müssen $A$ und $A^T$ beide den Eigenwert $-1$ haben.
- Jedes Drehkästchen ...
