# Skalarprodukte

Für Skalarprodukte ist etwas Vorwissen in verwandten Gebieten nützlich.

## Bilinearformen

Es seien $\K$ ein Körper und $V, W$ $\K$-VR. Eine *Paarung* $P$ zwischen $V$ und $W$ ist eine Abbildung

$$P: V \times W \to \K$$

bei der für alle $\lambda, \mu \in \K, v_1, v_2 \in V, w_1, w_2 \in W$ folgendes gilt:

$$\begin{aligned}
P(\lambda v_1 + v_2, w_1) &= \lambda P(v_1, w_1) + P(v_2, w_1)\\\\
P(v_1, \mu w_1 + w_2) &= \mu P(v_1, w_1) + P(v_1, w_2)
\end{aligned}$$

Dies nennt man *Bilinearität* der Abbildung $P$. $P$ ist also sowohl in $V$, als auch in $W$ linear.

Für $V = W$ sagt man nur Bilinearform auf $V$. Skalarprodukte sind auch Paarungen über einem einzelnen Vektorraum.

Eine Paarung $P$ heißt *nicht ausgeartet*, wenn für alle $v \in V, v \ne 0$, ein $w \in W$ existiert mit $P(v, w) \ne 0$,
und wenn für alle $w \in W, w \ne 0$ ein $v \in V$ existiert mit $P(v, w) \ne 0$.

> Skalarprodukte sind nicht ausgeartete Paarungen.


### Fundamentalmatrix

Sei $B$ eine Basis von $V$, $C$ eine Basis von $W$, $v = \sum_{i=1}^{m} \lambda_i b_i$ und $w = \sum_{j=1}^{n} \mu_j c_j$.
Dann gilt:

$$P(v, w) = \sum_{i,j} \lambda_i \mu_j \cdot P(b_i, c_j)$$

Dies nennt man **bilineare Fortsetzung** ist das multilineare Pendant zur *Linearen Fortsetzung*.

Man kann somit eine Paarung $P$ durch eine $m \times n$-Matrix $F$ ausdrücken, genannt *Fundamentalmatrix* von $P$
bezüglich der Basen $B$ und $C$: $D_{BC}(P) := F$

Es folgt unter Verwendung der Koordinatenvektoren $D_B(v) = ( \lambda_1, \dots, \lambda_m )^T$ und
$D_{C}(w) = ( \mu_1, \dots, \mu_n )$, dass

$$P(v, w) = D_{B}(v)^T \cdot D_{BC}(P) \cdot D_{C}(w)$$

gilt.

> Genau dann, wenn $\dim V = \dim W$ und $F$ invertierbar ist $P$ nicht ausgeartet


### Basiswechsel

Sei $\K$ ein Körper, $V, W$ endl. dim. $\K$-VR und $P: V \times W \to \K$ eine Paarung. Seien $B, \hat{B}$ und $C, \hat{C}$
Basen von $V$ bzw. $W$.

$$D_{B,C}(P) = D_{\hat{B}, B}(\id_V)^T \cdot D_{\hat{B}, \hat{C}}(P) \cdot D_{\hat{C}, C}(\id_W)$$

Für Skalarprodukte muss an der Stelle gelten, dass $B = C$ und $\hat{B} = \hat{C}$ ist, da Skalarprodukte symmetrisch
sein müssen, somit macht man einfach nur einen Basiswechsel von $B$ nach $\hat{B}$.


## Skalarprodukte

Zu guter letzt kann man nun wirklich über Skalarprodukte selber reden. Skalarprodukte auf $\K \ne \R$ oder $\K \ne \C$ sind
nicht unbedingt schön zu machen. Hier werden nur reelle Skalarprodukte betrachtet, also $\K = \R$.

Skalarprodukte berechnen den Abstand zwischen zwei Vektoren unter einer bestimmten Definition von Abstand
(vom Skalarprodukt abhängig).

Skalarprodukte an sich werden oft mit $\langle \cdot, \cdot \rangle$ geschrieben. Wenn man Vektoren $v, w$ einsetzt
sieht dies so aus $\langle v, w \rangle$.

Das Standardskalarprodukt hat die Einheitsmatrix als Fundamentalmatrix und somit gilt
$\langle v, w \rangle = v^T \cdot w = \displaystyle{\sum_{i=1}^{n} v_i \cdot w_i}$.

Folgendes ist teils schon bekannt über Skalarprodukte:

- Das Skalarprodukt ist eine Bilinearform auf $\R^n$ bzw. $\C^n$
- Das Skalarprodukt ist symmetrisch
- Für $v \in \K^n$ gilt: $v \ne 0 \implies \langle v, v \rangle > 0$ (Definition von *positiv definit* für Matrix $F$)

Man kann auch Skalarprodukte für andere Körper definieren, z.B. macht man dies bei Polynomen oft über Integrale

Seien $f, g \in \text{Pol}[\R], \\; I \subset \R$ kompaktes Interval mit $\vert I \vert > 0$

$$\langle f, g \rangle = \int_I f(x)g(x) dx$$

ist ein Skalarprodukt über $\text{Pol}[\R]$.

Sei $\langle \cdot, \cdot \rangle_a$ ein Skalarprodukt, dann ist

$\Vert v \Vert_a := \sqrt{\langle \cdot, \cdot \rangle_a}$ die **Norm** von $v$.

$d(v, w) := \Vert v -w \Vert$ ist der Abstand zwischen $v$ und $w$.

**Cauchy-Schwarz'sche Ungleichung**: Für alle $v, w \in V$ gilt:

$$
\begin{aligned}
v, w \\; \text{linear unabhängig} \\; \iff \langle v, w \rangle^2 =   \langle v, v \rangle \cdot \langle w, w \rangle \\\\
v, w \\; \text{linear abhängig}   \\; \iff \langle v, w \rangle^2 \lt \langle v, v \rangle \cdot \langle w, w \rangle
\end{aligned}
$$

**Dreiecksungleichung**: Für alle $u, v, w \in V$ gilt:

$$d(u, v) + d(v, w) \ge d(u, w)$$

**Winkel, Orthogonalität**: Seien $v, w \in V$ und $v, w \ne 0$, dann gibt es ein $\alpha \in [0, \pi]$ mit

$$\cos \alpha = \dfrac{\langle v, w \rangle}{\Vert v \Vert \cdot \Vert w \Vert}$$

Dieses $\alpha$ beschreibt den Winkel zwischen $v$ und $w$. Oft wird dies als $\alpha = \angle(v, w)$ geschrieben.

$v, w$ heißen **orthogonal** zueinander, wenn $\langle v, w \rangle = 0$ gilt. Für $v, w \ne 0$ ist dann der Winkel zwischen
ihnen genau $\pi/2$ bzw. $90\deg$. Wenn $v, w$ orthogonal sind, schreibt man $v \bot w$.

**Satz des Pythagoras**:

$$\Vert v + w \Vert^2 = \langle v, v \rangle + 2\langle v, w \rangle + \langle w, w\rangle \qquad\text{binom. Formel}$$

Daraus folgt

$$v \bot w \iff \Vert v + w \Vert^2 = \Vert v \Vert^2 + \Vert w \Vert^2$$

da wenn $v \bot w$ gilt $\langle v, w \rangle = 0$ gilt.

### Orthogonal- und Orthonormalbasis

Es sei $P: V \times V \to \K$ eine Bilinearform auf $V$ ($n$-dim. $\K$-VR)

1. $P$ heißt **symmetrisch**, wenn für alle $v, w \in V$ gilt: $P(v, w) = P(v, w)$<br />
   Das bedeutet, dass für eine beliebige Basis $B$ von $V$ die Fundamentalmatrix $D_{BB}(P)$ symmetrisch ist.
2. Eine Basis $B := \lbrace b_1, \dots, b_n \rbrace$ von $V$ heißt **Orthogonalbasis** (OGB) von $V$ bezüglich $P$,
   wenn gilt:<br />
   $\forall i,j \in \N \band i,j \le n \band i \ne j: P(b_i, b_j) = 0$<br />
   Aus $B$ Basis folgt auch, dass $P(b_i, b_i) \ne 0$.
3. Die Basis $B$ heißt eine **Orthonormalbasis** (ONB) von $V$ bezüglich $P$, wenn sie eine Orthogonalbasis ist und
   zusätzlich gilt:<br />
   $\forall i \in \N \band i \le n: P(b_i, b_i) = 1$

> Orthonormalbasen sind eine normierte Version von Orthogonalbasen

Diese Definition funktioniert für alle Paarungen, wenn man aber nur Skalarprodukte betrachtet sieht man woher der Name
Orthogonalbasis bzw. Orthonormalbasis überhaupt kommt.

Wählt man eine Teilmenge $S \subseteq V$ mit $0 \notin S$ wofür gilt, dass alle Vektoren paarweise orthogonal zueinander
sind, nennt man das ein Orthogonalsystem. Alle Vektoren von $S$ sind paarweise linear unabhängig. Somit folgt, dass
falls $\vert S \vert = \dim V$ gilt, dass $S$ eine Basis von $V$ ist. Dies nennt man dann eine **Orthogonalbasis**.

Man kann problemlos aus einer Orthogonalbasis eine Orthonormalbasis machen, indem man alle Basisvektoren normiert:

$$\tilde{S} = \lbrace \dfrac{1}{\Vert s \Vert} \cdot s \vert s \in S \rbrace$$

<br />

### Fourierformel

$$B \\; \text{Orthonormalbasis}, v \in V \implies v = \sum_{b \in B} P(v, b) \cdot b$$

Für Skalarprodukte spezialisiert:

$$B \\; \text{Orthonormalbasis}, v \in V \implies v = \sum_{i=1}^{n} \langle v, b_i \rangle b_i$$

Der Koordinatenvektor von $v$ bezüglich ONB $B$ ist der Vektor

$$D_B(v) = (\langle v, b_i \rangle)_{1 \le i \le n} \in \R^n$$

Für zwei Vektoren $v, w$ gilt folglich

$$\langle v, w \rangle = D_B(v)^T \cdot D_B(w)$$

Hiermit hat man spezielle Skalarprodukte in $V$ mit dem Standardskalarprodukt aus $\R^n$ ausgerechnet.

### Orthogonalmatrix

Wenn man eine **Orthonormalbasis** in eine Matrix $A$ schreibt erhält man eine **Orthogonalmatrix** (Ja, die Namenskonvention
ist nicht toll). Hierfür gilt dann:

$$A^T \cdot A = \id$$

denn der $(i, j)$-te Eintrag ist dann gerade $\langle v_i, v_j \rangle$.

Die *orthogonale Gruppe* sei wie folgt definiert

$$O(n) := \lbrace A \in \R^{n \times n} \\; \vert \\; A^T \cdot A = \id \rbrace$$

Es gilt:
- $O(n) \subseteq GL_n(\R)$, da $A^{-1} = A^T$ also existiert das Inverse.
- $O(n)$ ist nicht leer, da immer $\id$ darin liegt.
- Für $A, B \in O(n)$ gilt: $A \cdot B^{-1} \in O(n)$, denn $B^{-1} = B^T$ und
  $(A \cdot B^{-1})^T \cdot A \cdot B^{-1} = (B^{-1})^T \cdot A^T \cdot A \cdot B^{-1} = B \cdot B^T = \id$
- Es gilt $\det(A^T \cdot A) = \det(A^2) = 1$, also ist $\det(A) = 1$ oder $-1$.

$$SO(n) := \lbrace A \in O(n) \\; \vert \\; \det(A) = 1 \rbrace$$

> Die Gruppe der *speziell orthogonalen $n \times n$-Matrizen

### Orthogonalisierungsverfahren von Gram Schmidt

Sei $\lbrace v_1, v_2, \dots, v_k \rbrace$ eine Basis von $U < V$. Man versucht nun aus der vorhandenen Basis eine
ONB zu machen. Man definiert rekursiv $w_1, \dots, w_k$:

$$w_1 := v_1, w_l := v_l - \sum_{i=1}^{l-1} \dfrac{\langle v_l, w_i \rangle}{\langle w_i, w_i \rangle} \cdot w_i
\quad (\text{für} \\; l=2,\dots,k)$$

Dann ist die Menge $S := \lbrace w_1, \dots, w_k \rbrace$ eine Orthogonalbasis von $U$. Nun muss man diese Basis nurnoch
normieren und erhält dann eine Orthonormalbasis:

$$\tilde{S} := \lbrace \dfrac{1}{\Vert w_1 \Vert} \cdot w_1, \\; \dots, \\; \dfrac{1}{\Vert w_k \Vert} \cdot w_k \rbrace$$

<br />

### Iwasawa-Zerlegung von $GL_n(\R)$

Man stelle sich die Modifikationen auf der Matrix mit Basisvektoren als Spalten, die beim orthogonaliseren durch
Gram Schmidt auftreten vor. Die Veränderungen sind elementare Spaltenumformungen, können also mit Multiplikation einer
Matrix dargestellt werden. Diese Matrix ist eine obere Dreiecksmatrix mit positiven Einträgen auf der diagonalen.

Danach muss man noch die Matrix normalisieren, dies ist einfach eine Multiplikation mit einer Diagonalmatrix.

Somit erhält man insgesamt, dass man jede Matrix $A \in GL_n(\R)$ schreiben kann als Multiplikation $S \cdot C$ mit
$C$ eine obere $n \times n$-Dreiecksmatrix und $S$ eine Diagonalmatrix. Diese Zerlegung ist eindeutig und wird
**Iwasawa-Zerlegung** genannt.

**Positivität**

Sei $F$ symmetrisch mit $F = (f_{ij}) \in \R^{n \times n}$. Dann sind die folgenden Aussagen äquivalent:

- $F$ ist positiv definit
- Es gibt eine obere Dreiecksmatrix $A \in GL_n(\R)$ mit $F = A^T \cdot A$
- Für $1 \le k \le n$ sind die Determinanten der Matrix $F_k := (f_{ij})_{1 \le i,j \le k}$ positiv

### Orthogonale Komplemente, Projektionen und Abstände

Es sei $V$ ein VR und $M \subseteq V$ Teilmenge. Dann ist der **Orthogonalraum** zu $M$ ($M^{\bot}$, sprich "M senkrecht") definiert durch

$$M^{\bot} := \lbrace v \in V \\; \vert \\; \forall m \in M: m \\; \bot \\; v \rbrace
            = \lbrace v \in V \\; \vert \\; \forall m \in M: \langle v, m \rangle = 0 \rbrace$$

$M^{\bot}$ ist UVR von $V$.

> Man kann das Skalarprodukt benutzen, um $V$ als Teilraum des Dualraums $V^*$ zu verstehen. Dann ist $M^{\bot}$ der
> Durchschnitt der Kerne der zu $m \in M$ gehörenden Linearformen.
>
> $N \subseteq M \implies M^{\bot} \subseteq N^{\bot}, \quad M^{\bot} = \langle M \rangle^{\bot}$

<br />

In einem **endlichdimensionalen** euklidischen VR $V$ sei ein euklidischer UVR $U$ gegeben. Dann ist $U^{\bot}$ zu $U$
ein komplementärer UVR von $V$.

Dieses $U^{\bot}$ nennt man dann auch **Orthogonales Komplement** zu $U$ und es gilt $V = U \oplus U^{\bot}$.

**Orthogonale Projektion und Abstand**

Sei $V = U \oplus U^{\bot}$ eine Zerlegung von $V$. Dann kann man einen zugehörigen Homomorphismus

$$\pi_U: V \to U, \pi_U(u + u^{\bot}) := u$$

definieren, welcher einfach immer für beliebiges $v \in V$ den Teil aus $U^{\bot}$ entfernt, womit nurnoch $u \in U$ bleibt.

Dies nennt man dann **orthogonale Projektion** von $V$ auf $U$ längs $U^{\bot}$. Man kann dies auch als Endomorphismus
anstatt Homomorphismus betrachten, da $U < V$.

Folglich gilt: $\ker(\pi_U) = U^{\bot}$ und $U = \text{Eig}(\pi_U, 1)$ (da für $u \in U$ gilt, dass $\pi_U(u) = u$ ist).
Es gilt auch, dass $\pi_U^2 = \pi_U$ ist, da $u^{\bot}$ nach einem Mal anwenden schon entfernt ist und somit nurnoch ein
$u \in U$ bleibt, wofür $\pi_U$ die Identität ist.

> Das gleiche kann man natürlich auch für $\pi_{U^\bot}$ machen.

Den Abstand zwischen 2 Teilmengen $A, B$ von $V$ definiert man als den minimalen Abstand zwischen $(a,b) \in A \times B$, also

$$d(A, B) := \inf \lbrace d(a, b) \\; \vert \\; a \in A, b \in B \rbrace$$

Für $V = U \oplus U^{\bot}$ ist der Abstand zwischen einem Vektor und $U$ bzw. $U^{\bot}$ folgendes:

OBdA. für $U$:

$v = u + u^{\bot} \in V$, dann ist $d(v, U) = \Vert u^{\bot} \Vert = \Vert \pi_{U^{\bot}}(v) \Vert$

Für beliebige Teilmengen $A \in V$ (also auch für UVR) gilt: $d(A, U) = d(\pi_{U^{\bot}}(A), 0)$

Falls man $A$ als affinen Unterraum (/affiner Teilraum) $v + W$ mit $W < V$ UVR wählt, dann gilt
$d(A, U)= \Vert \pi_{(U+W)^{\bot}}(v) \Vert$.

### affiner Teilraum, Lot, Lotfußpunkte

Affine Teilräume scheinen das gleiche zu sein wie affine Unterräume.

Für $a, b \in V$ heißt:

$$\overline{a, b} := \lbrace \lambda a + (1-\lambda)b \\; \vert \\; \lambda \in \K \rbrace = a + \K \cdot (b-a)$$

die *affine Gerade* durch $a$ und $b$.

Wenn $\K = \R$ gilt, dann ist für $a, b$ in $V$ die Menge

$$[a,b] := \lbrace \lambda a + (1 - \lambda)b \\; \vert \\; 0 \le \lambda \le 1 \rbrace$$

die *Strecke* zwischen $a$ und $b$.

Seien $U, W$ endlichdim. UVR vom euklidischen VR $V$, $v \in V$ und $A := v + W$. Dann gibt es $u \in U$ und $w \in W$, sodass
$v - u - w$ auf $U + W$ senkrecht steht. Dann hießt die Strecke $[u, v-w]$ ein **Lot** zwischen $U$ und $A$, und die Punkte
$u \in U$ und $v-w \in A$ heißen seine **Lotfußpunkte**. Das Lot ist genau dann eindeutig bestimmt,
wenn $U \cap W = \lbrace 0 \rbrace$. Ansonsten kann man es um eien beliebigen Vektor aus $U \cap W$ verschieben.
