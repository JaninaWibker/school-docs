# Diagonalisierbarkeit und Trigonalisierbarkeit

> **TL;DR**: <br />
> **Diagonalisierbarkeit** heißt, dass $A \in \K^{n \times n}$ zerlegt werden kann in $S \cdot D_A \cdot S^{-1}$, wobei $D_A$ eine **Diagonalmatrix** ist.
>
> **Trigonalisierbarkeit** heißt, dass $A \in \K^{n \times n}$ zerleget werden kann in $S \cdot D_A \cdot S^{-1}$, wobei $D_A$ eine **obere Dreiecksmatrix** ist.

## Diagonalisierbarkeit

### Eigenschaften - Äquivalenzen

Die Diagonalisierbarkeit ist eine Ähnlichkeitsinvariante.

Sei $A$ eine $n \times n$-Matrix, dann sind folgende Aussagen äquivalent:

- $A$ ist diagonalisierbar
- Das Minimalpolynom $\mu_A(X)$ zerfällt vollständig in paarweise verschiedene Linearfaktoren: $\mu_A(X) = \pm (X - \lambda_1)(X - \lambda_2) \dots (X - \lambda_n)$
- Das charakteristische Polynom $\chi_A(X)$ zerfällt vollständig in Linearfaktoren und die *geometrische Vielfachheit* entspricht der *algebraischen Vielfachheit* für jeden Eigenwert $\lambda_i \in \K$
- Es gibt eine Basis für $\K^n$, die aus Eigenvektoren für $A$ besteht
- Die Summe der Dimensionen der jeweiligen Eigenräume ist gleich $n$:

$$\sum_{\lambda \in \text{Spec}(A)} \text{dim}(V_\lambda(A))$$

- $\K^n$ ist die direkte Summer der jeweiligen Eigenräume:

$$\K^n = \bigotimes_{\lambda \in \text{Spec}(A)} V_\lambda(A)$$

Wenn $A$ diagonalisierbar ist, dann gilt: $A^n = S \cdot {D_A}^n \cdot S^{-1}$, wobei $D_A$ eine Diagonalmatrix ist.

### Diagonalisieren

Um eine Matrix $A$ zu diagonalisieren (bzw. herauszufinden, ob dies überhaupt möglich ist) muss man folgendes tun:

1. Die Eigenwerte $\lambda_i$ von $A$ berechnen, meistens über das charakteristische Polynom / Minimalpolynom.
2. Die Eigenräume $V_{\lambda_i}$ zu allen Eigenwerten $\lambda_i$ bestimmen:
  $$(A - \lambda_i \cdot \text{Id}) \cdot \begin{pmatrix}e_1 \\\\ \vdots \\\\ e_n\end{pmatrix} = 0$$

  Wenn die Summe $\displaystyle{\sum_{\lambda_i \in \text{Spec}(A)} \text{dim} V_{\lambda_i}}$ direkt ist bzw. gleich $n$ ist, dann ist $A$ diagonalisierbar, ansonsten nicht.
3. Da man nun weiß, dass $A$ diagonalisierbar ist, weiß man, dass die *algebraische Vielfachheit* der *geometrischen Vielfachheit* entspricht, also können wir nun eine Basis $B$ aus Eigenvektoren für jeden Eigenraum zu jedem Eigenwert bestimmen.
4. Nun ist die Diagonalform $D_A$ der Matrix $A$ bezüglich der Basis $B = \\{ b_1, \dots, b_n \\}$: <br />
  $D_A = \text{diag}(\lambda_1, \lambda_2, \dots, \lambda_n)$ <br />
  $S = (b_1, \dots, b_n)$

### Beispiel

$$A = \begin{pmatrix}
-3 & -3 &  4 & -2 \\\\
 0 &  0 & -1 & -1 \\\\
 0 &  3 & -6 &  1 \\\\
 0 & -3 &  3 & -4
\end{pmatrix} \in \R^{4 \times 4}$$
<br />

$$\chi_A(x) = \text{det} \begin{pmatrix}
x+3 &   3 &  -4 &   2 \\\\
  0 &   x &   1 &   1 \\\\
  0 &  -3 & x+6 &  -1 \\\\
  0 &   3 &  -3 & x+4
\end{pmatrix}$$

$$= (x+3) \cdot \text{det} \begin{pmatrix}
  x &   1 &   1 \\\\
 -3 & x+6 &  -1 \\\\
  3 &  -3 & x+4
\end{pmatrix}$$

$$= (x+3) \cdot \text{det} \begin{pmatrix}
  x &   1 &   1 \\\\
  0 & x+3 & x+3 \\\\
  3 &  -3 & x+4
\end{pmatrix}$$

$$= (x+3) \cdot \text{det} \begin{pmatrix}
  x &   1 &   0 \\\\
  0 & x+3 &   0 \\\\
  3 &  -3 & x+7
\end{pmatrix}$$

$$= (x+3) \cdot (x+7) \cdot (x) \cdot (x+3) = (x+3)^2 \cdot (x+7) \cdot x$$

Eine schöne Sache bei diesem Beispiel ist, dass $\chi_A$ direkt in Linearfaktoren zerfällt, man muss also nicht besonders viel noch für dem Minimalpolynom herumrechnen. Was nicht ideal ist, ist dass es keine 4 Eigenwerte gibt, sondern nur 3. Daher muss man jetzt etwas rumrechnen. Man muss zeigen, dass 

$$\bigotimes_{{\lambda_i} \in \text{Spec}(A)} \text{dim} V_{\lambda_i} = n$$

gilt, dafür muss man die Dimensionen der Eigenräume bestimmen, hätte man direkt $n$ Eigenwerte gegeben könnte man sich dies an dieser Stelle sparen, müsste es aber dafür dann später bei der Bestimmung der Matrix $S$ dann tun.

$$V_{\lambda_i} = \text{Ker}(\lambda_i\mathbf{1} - A)$$

Also Kerne berechnen:

$$-3 \cdot \mathbf{1} - A$$

$$= \begin{pmatrix}
   0 &   3 &  -4 &   2 \\\\
   0 &  -3 &   1 &   1 \\\\
   0 &  -3 &   3 &  -1 \\\\
   0 &   3 &  -3 &   1
\end{pmatrix} = \begin{pmatrix}
   0 &   0 &  -3 &   3 \\\\
   0 &  -3 &   1 &   1 \\\\
   0 &  -3 &   3 &  -1 \\\\
   0 &   0 &   0 &   0
\end{pmatrix}$$

$$= \begin{pmatrix}
   0 &   0 &  -1 &   1 \\\\
   0 &  -3 &   1 &   1 \\\\
   0 &   0 &   1 &  -1 \\\\
   0 &   0 &   0 &   0
\end{pmatrix} = \begin{pmatrix}
   0 &   0 &  -1 &   1 \\\\
   0 &  -3 &   0 &   2 \\\\
   0 &   0 &   0 &   0 \\\\
   0 &   0 &   0 &   0
\end{pmatrix}$$

$$\implies \text{Ker}(-3 \cdot \mathbf{1} - A) = \Bigg\lang
\begin{pmatrix} 0 \\\\ \frac{2}{3} \\\\ 1 \\\\ 1 \end{pmatrix},
\begin{pmatrix} 1 \\\\ 0           \\\\ 0 \\\\ 0 \end{pmatrix}
\Bigg\rang$$

$$-7 \cdot \mathbf{1} - A$$

$$= \begin{pmatrix}
  -4 &   3 &  -4 &   2 \\\\
   0 &  -7 &   1 &   1 \\\\
   0 &  -3 &  -1 &  -1 \\\\
   0 &   3 &  -3 &  -3
\end{pmatrix} = \begin{pmatrix}
  -4 &   3 &  -4 &   2 \\\\
   0 & -10 &   0 &   0 \\\\
   0 &  -3 &  -1 &  -1 \\\\
   0 &  12 &   0 &   0 
\end{pmatrix}$$

$$= \begin{pmatrix}
  -4 &   0 &  -4 &   2 \\\\
   0 &   1 &   0 &   0 \\\\
   0 &   0 &  -1 &  -1 \\\\
   0 &   0 &   0 &   0 
\end{pmatrix} = \begin{pmatrix}
  -4 &   0 &  -6 &   0 \\\\
   0 &   1 &   0 &   0 \\\\
   0 &   0 &  -1 &  -1 \\\\
   0 &   0 &   0 &   0 
\end{pmatrix}$$

$$= \begin{pmatrix}
   2 &   0 &   3 &   0 \\\\
   0 &   1 &   0 &   0 \\\\
   0 &   0 &   1 &   1 \\\\
   0 &   0 &   0 &   0 
\end{pmatrix}$$

$$\implies \\text{Ker}(-7 \cdot \mathbf{1} - A) = \Bigg\lang
\begin{pmatrix} \frac{3}{2} \\\\ 0 \\\\ -1 \\\\ 1 \end{pmatrix}
\Bigg\rang$$

$$0 \cdot \mathbf{1} - A$$

$$= \begin{pmatrix}
   3 &   3 &  -4 &   2 \\\\
   0 &   0 &   1 &   1 \\\\
   0 &  -3 &   6 &  -1 \\\\
   0 &   3 &  -3 &   4 
\end{pmatrix} = \begin{pmatrix}
   3 &   0 &  -1 &  -2 \\\\
   0 &   0 &   1 &   1 \\\\
   0 &   0 &   3 &   3 \\\\
   0 &   3 &  -3 &   4 
\end{pmatrix}$$

$$= \begin{pmatrix}
   3 &   0 &   0 &   1 \\\\
   0 &   0 &   1 &   1 \\\\
   0 &   0 &   0 &   0 \\\\
   0 &   3 &  -7 &   0 
\end{pmatrix} = \begin{pmatrix}
   3 &   0 &   0 &   1 \\\\
   0 &   0 &   1 &   1 \\\\
   0 &   0 &   0 &   0 \\\\
   0 & \frac{3}{7} &  -1 &   0 
\end{pmatrix}$$

$$\implies \\text{Ker}(0 \cdot \mathbf{1} - A) = \Bigg\lang
\begin{pmatrix} \frac{1}{3} \\\\ -7 \\\\ -1 \\\\ 1 \end{pmatrix}
\Bigg\rang$$

Somit haben wir nun unsere Teile von $S$ zusammen:

$$\Bigg\lang
\begin{pmatrix} 0 \\\\ \frac{2}{3} \\\\ 1 \\\\ 1 \end{pmatrix},
\begin{pmatrix} 1 \\\\ 0           \\\\ 0 \\\\ 0 \end{pmatrix}
\Bigg\rang, \Bigg\lang
\begin{pmatrix} \frac{3}{2} \\\\ 0 \\\\ -1 \\\\ 1 \end{pmatrix}
\Bigg\rang, \Bigg\lang
\begin{pmatrix} \frac{1}{3} \\\\ -7 \\\\ -1 \\\\ 1 \end{pmatrix}
\Bigg\rang$$

Also sind wir nun eigentlich fertig:

$A' = \begin{pmatrix}
 -3 &  0 &  0 &  0 \\\\
  0 & -3 &  0 &  0 \\\\
  0 &  0 & -7 &  0 \\\\
  0 &  0 &  0 &  0
\end{pmatrix}$

$S =  \Big( \\; b_1 \\; \vert \\; b_2 \\; \vert \\; b_3 \\; \vert \\; b_4 \\; \Big\)= \begin{pmatrix}
  0 & 1 & \frac{3}{2} & \frac{1}{3} \\\\
  \frac{2}{3} & 0 & 0 & -7 \\\\
  1 & 1 & -1 & -1 \\\\
  1 & 1 &  1 &  1
\end{pmatrix}$

$\implies A = S \cdot A' \cdot S^{-1}$

## Trigonalisierbarkeit

Die Trigonalisierbarkeit ist (auch) eine Ähnlichkeitsinvariante

### Eigenschaften - Äquivalenzen

Sei $A$ eine $n \times n$-Matrix, dann sind folgende Aussagen äquivalent:

- $A$ ist trigonalisierbar
- Das Minimalpolynom $\mu_A(X)$ zerfällt in Linearfaktoren
- Das charakteristische Polynom $\chi_A(X)$ zerfällt in Linearfaktoren

Handelt es sich um den Körper $\C$, so ist jede quadratische Matrix trigonalisierbar, da in $\C$ jedes nicht konstante Polynom in Linearfaktoren zerfällt.

Vieles hiervon ähnelt stark der Diagonalisierbarkeit, aber nicht ganz. Bei der Trigonalisierbarkeit handelt es sich um eine Abschwächung der Kriterien für Diagonalisierbarkeit. Beispielsweise muss nicht gelten, dass die *algebraische Vielfachheit* gleich der *geometrischen Vielfachheit* ist, das Minimalpolynom $\mu_A$ muss außerdem nicht in paarweise verschiedene Linearfaktoren zerfallen, es ist also möglich dass bspw. $\mu_A(X) = (X-3)^2 \cdot (X+2)$ ist.

Wenn $A$ trigonalisierbar ist, dann gilt $A^n = S \cdot O_A^n \cdot S^{-1}$, wobei $O_A$ eine obere Dreiecksmatrix ist.

### Trigonalisieren

> **TODO**

<!--Um eine Matrix $A$ zu trigonalisieren (bzw. herauszufinden, ob dies überhaupt möglich ist) muss man ähnlich wie bei der Diagonalisierung vorgehen. Wenn man eine Matrix schon diagonalisiert hat, ist sie natürlich direkt auch schon trigonalisiert:

1. Die Eigenwerte $\lambda_i$ von $A$ berechnen, meistens über dascharakteristische Polynom / Minimalpolynom.
2. Die Eigenräume $V_{\lambda_i}$ zu allen Eigenwerten $\lambda_i$ bestimmen:  
-->

## Begriffsklärung

### Algebraische Vielfachheit

Die *algebraische Vielfachheit* kann man am charakteristischen Polynom ablesen, sie ist der Exponent des zugehörigen Linearfaktors des Eigenwertes:

$\chi_A(X) = (X-3)^2 \cdot (X+1)^3 \cdot X$ hat die folgenden algebraischen Vielfachheiten $r_i$:
 
| $\lambda_i$ | $r_i$ |
| ----------- | ----- |
| $3$         | $2$   |
| $-1$        | $3$   |
| $0$         | $0$   |

### Geometrische Vielfachheit

Die *geometrische Vielfachheit* kann man anhand der Diagonalmatrix / oberen Dreiecksmatrix ablesen, es ist die Häufigkeit jedes Eigenwertes auf der Hauptdiagonalen, somit ist es auch jeweils die Dimension der Eigenräume $\text{dim} V_{\lambda_i}$:

$A = \begin{pmatrix}
3 & 0 & 0 & 0 \\\\
0 & 3 & 8 & 4 \\\\
0 & 0 & 5 & 3 \\\\
0 & 0 & 0 & 7
\end{pmatrix}$

Hier hat die Matrix $A$ die folgenden geometrischen Vielfachheiten $d_i$:

| $\lambda_i$ | $d_i$ |
| ----------- | ----- |
| $3$         | $2$   |
| $5$         | $1$   |
| $7$         | $1$   |

Für die algebraische und die geometrische Vielfachheit gilt klarerweise immer $\ge 1$, des weiteren gilt: $d_i \le r_i$ für jedes $\lambda_i$

