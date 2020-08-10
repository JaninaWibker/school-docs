# Höhere Mathematik II

## Fundamentales & Notation

### Gradient - Ableitungen in $\R^n$

Man kann im $\R^n$ nicht wie zuvor nur nach einer Variable ableiten, man muss *irgendwie* alle betrachten.
Daher die Definition des **Gradienten**: Sei $f: \R^n \to \R$

$$\text{grad}(f) = \begin{pmatrix} f_{x_1} & f_{x_2} & \dots & f_{x_n} \end{pmatrix}$$

Hierbei ist $f_{x_i}$ die Ableitung von $f$ nach dem $i$-ten Eintrag von $\R^n$.

### Hesse-Matrix

Die Hesse-Matrix repräsentiert die zweite Ableitung. Sie ist nur für Funktionen von $\R^n \to \R$ benutzbar, also
explizit **nicht** für $\R^n \to \R^n$

$$H_f = \begin{pmatrix}
  f_{x_1, x_1} & f_{x_1, x_2} & \dots & f_{x_1, x_n} \\\\
  \dots        &              &       & \vdots       \\\\
  f_{x_n, x_1} & f_{x_n, x_2} & \dots & f_{x_n, x_n}
\end{pmatrix} = \begin{pmatrix}
  \text{grad}(f_{x_1}) \\\\
  \vdots               \\\\
  \text{grad}(f_{x_n})
\end{pmatrix}$$

> Die Hesse-Matrix ist symmetrisch.

### Jacobi-Matrix

Falls man eine Funktion von $\R^n \to \R^n$ hat nennt man dies nichtmehr Gradient sondern **Jacobi Matrix**,
**Ableitung** oder **Fundamentalmatrix**:

$$\dfrac{\partial f}{\partial x} := J_f = \begin{pmatrix}
  \frac{\partial f_1}{\partial x_1} & \dots & \frac{\partial f_1}{\partial x_n} \\\\
  \vdots                            &       & \vdots                            \\\\
  \frac{\partial f_n}{\partial x_n} & \dots & \frac{\partial f_n}{\partial x_n}
\end{pmatrix} = \begin{pmatrix}
  \text{grad}(f_1) \\\\
  \vdots           \\\\
  \text{grad}(f_n)
\end{pmatrix}$$


## Beschränkt, Offen, Abgeschlossen, ...

Sei $A \in \R^n$

- $A$ heißt **beschränkt**: $\iff \exists c \gt 0 \forall a \in A: \Vert a \Vert \lt c$<br />
  *Erklärung*: Man findet immer ein Maximum für die Entfernung vom Ursprung, welches aus $(0, \infty)$ ist.<br />
  *Beispiel*: $[a, \infty)$ ist **nicht** beschränkt, da $\infty$.
- $A$ heißt **offen**: $\iff \forall a \in A \exists \epsilon = \epsilon(a) > 0: U_{\epsilon}(a) \subseteq A$<br />
  *Erklärung*: Es gibt für jeden beliebigen Punkt $a \in A$ eine $\epsilon$-Umgebung, welche komplett in $A$ enthalten
  ist<br />
  *Beispiel*: $(a, b)$ ist ein offenes Intervall
  $\epsilon$ darf von $a$ abhängen, muss aber größer $0$ sein.
- $A$ heißt **abgeschlossen**: $\iff \R^n \setminus A$ ist offen<br />
  *andere Definition*: Jeder Häufungspunkt von $A$ gehört zu $A$<br />
  *Beispiel*: $[a, b]$ ist ein abgeschlossenes Intervall, weil $a$ und $b$ im Intervall enthalten sind und somit nicht<br />
  in $\R^n \ A$ sind wodurch man immer ein $\epsilon > 0$ finden kann.
- $A$ heißt **kompakt**: $\iff$ $A$ ist beschränkt und abgeschlossen.<br />
  *andere Definition*: Jede Folge $(x_n)$ in $A$ enthält eine konvergente Teilfolge $(x_{n_k})$
  mit $\displaystyle{\lim_{k\to\infty} x_{n_k}} \in D$

- $\emptyset$ ist offen.
- $\emptyset$ ist kompakt.
- Endliche Mengen sind kompakt.
- Ist $A$ kompakt und $A \ne \emptyset$, so existieren $\max A$ und $\min A$.
- $\R^n$ ist abgeschlossen, aber nicht kompakt, da $\R^n \setminus \R^n = \emptyset$ ist, was offen ist.
- $[a, \infty)$ und $(-\infty, a]$ sind abgeschlossen, aber nicht kompakt, weil sie nicht beschränkt sind.

## Umkehrsatz

Es sei $D \subseteq \R^n$ offen, $f \in C^1(D, \R^n)$ und $x_0 \in D$. Ist $\det f'(x_0) \ne 0$, so existiert ein $\epsilon > 0$ mit:

- $U_{\epsilon}(x_0) \subseteq D$ und $f(U_{\epsilon}(x_0))$ ist offen
- $f$ ist auf $U_{\epsilon}$ injektiv,
- $f^{-1}: f(U_{\epsilon}(x_0)) \to U_{\epsilon}(x_0)$ ist in $C^1(f(U_{\epsilon}(x_0)), \R^n)$, $\det f'(x) \ne 0 (x \in U_{\epsilon}(x_0))$
  und $(f^{-1})'(y) = (f'(f^{-1}(y)))^{-1} (y \in f(U_{\epsilon}(x_0)))$

## Richtungsableitung

Eine Richtungsableitung ist eine Ableitung, welche sich nicht unbedingt an *den Achsen festhält*, also keine Ableitung welche
die Steigung an genau einer der Achsen misst, sondern an einer beliebigen Gerade. Beispielsweise könnte man eine Richtungsbleitung machen, welche genau gleichviel nach $x$ und nach $y$ ableitet / läuft.

Sei $a \in \R^n$ mit $\Vert a \Vert$, dann nennt man $a$ eine **Richtung** oder einen **Richtungsvektor**.

Passe nun die Definition des Differenzenquotienten so an, dass er mit Richtungen funktioniert:

Sei $x_0 \in D$, $a$ eine Richtung. $f$ heißt **in** $x_0$ **in Richtung** $a$ **differenzierbar**: $\iff$ Es existiert
der Grenzwert

$$\dfrac{\partial f}{\partial a}(x_0) := \lim_{t\to 0} \dfrac{f(x_0 + ta) - f(x_0)}{t} \in \R$$

### einfachere berechnung der Richtungsableitung

Ist $f$ in $x_0 \in D$ differenzierbar und $a \in \R^n$ eine Richtung, dann ist

$$\dfrac{\partial f}{\partial a}(x_0) a \cdot \text{grad} f(x_0)$$

## Extrema im $\R^n$

Sei $A$ eine reelle und symmetrische $n \times n$-Matrix. $A$ heißt

- **positiv definit** (pd): $\iff \forall x \in \R^n \setminus \lbrace 0 \rbrace: (Ax) \cdot x > 0$
- **negativ definit** (nd): $\iff \forall x \in \R^n \setminus \lbrace 0 \rbrace: (Ax) \cdot x < 0$
- **indefinit**       (id): $\iff \exists u, v \in \R^n: (Au) \cdot u > 0$ und $(Av) \cdot v < 0$

> Hierbei steht $(Ax) \cdot x$ für das Skalarprodukt von $Ax$ mit $x$.

- $A$ ist positiv definit $\iff$ alle Eigenwerte von $A$ sind $> 0$
- $A$ ist negativ definit $\iff$ alle Eigenwerte von $A$ sind $< 0$
- $A$ ist indefinit       $\iff$ es gibt Eigenwerte die $> 0$ und Eigenwerte die $< 0$ sind


Für $M \subseteq \R^n, g: M \to \R$ und $x_0 \in M$
- **lokales Maximum**:  $\iff \exists \delta > 0 \forall x \in U_{\delta}(x_0) \cap M: g(x) \lt g(x_0)$
- **lokales Minimum**:  $\iff \exists \delta > 0 \forall x \in U_{\delta}(x_0) \cap M: g(x) \gt g(x_0)$
- **globales Maximum**: $\iff \forall x \in M: g(x) \lt g(x_0)$
- **globales Minimum**: $\iff \forall x \in M: g(x) \gt g(x_0)$

Ist $f$ in $x_0 \in D$ partiell differenzierbar und hat $f$ in $x_0$ ein lokales Extremum, so ist $\text{grad}(x_0) = 0$

Ist $f \in C^2(D, \R), x_0 \in D$ und $\text{grad} f(x_0) = 0$, so gilt:
- Ist $H_f(x_0)$ positiv definit, so hat $f$ in $x_0$ ein lokales Minimum.
- Ist $H_f(x_0)$ negativ definit, so hat $f$ in $x_0$ ein lokales Maximum.
- Ist $H_f(x_0)$ indefinit,       so hat $f$ in $x_0$ kein lokales Extremum.

## Integration im $\R^n$

> **Definitionen**: kompaktes Intervall, Zerlegung, messbar, innerer Inhalt, äußerer Inhalt

Die Idee ist, dass man die Menge über die man integrieren will so anpasst, dass man leichter damit rechnen kann. Hierfür
bieten sich oft Kreisscheiben, Zylinder, Kugeln, ... an. Man modifiziert hierbei die Menge an Eingabeparametern und passt
danach die Funktion so an, dass diese transformierten Eingabeparameter wieder zurücktransformiert werden und mit etwas glück
kann man dann damit einiges vereinfachen.

### Satz von Fubini

Sei $\R^n = \R^p \times \R^q$ mit $I_1$ kompaktes Intervall in $\R^p$ und $I_2$ kompaktes Intervall in $\R^q$.
Sei $I = I_1 \times I_2$
$(x, y) \in I$ mit $x \in I_1, y \in I_2$

- Wenn für jedes feste $y \in I_2$ ist die Funktion $x \mapsto f(x, y)$ int. über $I_1$ und $g(y) := \int_{I_1} f(x,y) dx$, dann ist $g \in R(I_2)$ und
  $\int_{I} f(x,y) d(x,y) = \int_{I_2} g(y) dy = \int{I_2} \int_{I_1} f(x, y) dx dy$
- Analog für $x \in I_1$

Sei $I = [a_1, b_1] \times [a_2, b_2] \times ... [a_n, b_n]$ und $f \in C(I)$, dann kann man die Reihenfolge der
Integrale beliebig tauschen:

$$\int_{I} f(x) dx = \int_{I} f(x_1, \dots, x_n) d(x_1, \dots, x_n) = \int_{a_1}^{b_1} \int_{a_2}^{b_2} \dots dx_2 dx_1$$

### Prinzip von Cavalieri

Sei $B \subseteq \R^{n+1}$ messbar. Schreibe $(x, z) \in B$ mit $x \in \R^n$ und $z \in R$ mit $z \in [a, b] \iff (x,z) \in B$.

Für $z \in [a,b]$ sei: $Q(z) := \lbrace x\in\R^n: (x,z) \in B\rbrace$.
Weiter sei $Q(z)$ messbar für jedes $z \in [a,b]$. Dann ist $z \mapsto \vert Q(z) \vert$ integrierbar über $[a,b]$ und

$$\vert B \vert = \int_a^b \vert Q(z) \vert dz$$

Man hat also eigentlich nur nach einer der Variablen "entwickelt" und einen geschlossenen Ausdruck dafür gefunden womit man gut arbeiten kann.

### Rotationskörper

**TODO**

### Substitutionsregel

$G \subseteq \R^n$ offen, $g \in C^1(G, \R^n)$ und $B \subseteq G$ kompakt und messbar. Weiter sei $g$ auf dem Inneren $B^\circ$ von $B$ injektiv und

$$\det g'(y) \ne 0 (y \in B^\circ)$$

Ist dann $A := g(B)$ und $f \in C(A, \R)$, so ist $A$ kompakt und messbar und es gilt:

$$\int_A f(x) dx = \int_B f(g(y)) \cdot \vert \det g'(y) \vert dy$$

### Polarkoordinaten (n=2)

Nutze die Substitutionsregel um die normalen Koordinaten zu Polarkoordinaten zu machen wie man sie von komplexen Zahlen kennt.

$$\begin{aligned}
x &= r \cos \varphi \\\\
y &= r \sin \varphi \\\\
\text{mit } r &= \Vert (x, y) \Vert
\end{aligned}$$

$$g(r, \varphi) := (r \cos \varphi, r \sin \varphi), \det g_(r, \varphi) = r$$

Betrachte $\varphi_1, \varphi_2 \in [0, 2\pi]$ mit $\varphi_1 < \varphi_2$ und $0 \le R_1 \lt R_2$ und
$A := \lbrace (r \cos \varphi, r \sin \varphi): \varphi \in [\varphi_1, \varphi_2], r \in [R_1, R_2] \rbrace$

Mit $B := \underbrace{[R_1, R_2]}_{r} \times \underbrace{[\varphi_1, \varphi_2]}_{\varphi}$ ist $A = g(B)$.
Auf $B^\circ = (R_1, R_2) \times (\varphi_1, \varphi_2)$ ist $g$ injektiv und $\det g' \ne 0$.

Hierbei ist:
- $R_1$: innerer Radius
- $R_2$: äußerer Radius
- $\varphi_1$: min. Winkel
- $\varphi_2$: max. Winkel

Ist nun $f \in C(A, \R)$, so gilt:

$$\int_A f(x, y) d(x, y) = \int_B f(r \cos \varphi, r \sin \varphi) \cdot r d(r, \varphi) = \int_{\varphi_1}^{\varphi_2} \int_{R_1}^{R_2} f(r \cos \varphi, r \sin \varphi) \cdot r dr d\varphi$$

### Zylinderkoordinaten (n=3)

Fast das gleiche wie Polarkoordinaten, nur eine "unbenutzte" Variable $z$ zusätzlich (Höhe des Zylinders):

$$\begin{aligned}
x &= r \cos \varphi \\\\
y &= r \sin \varphi \\\\
z &= z \\\\
\text{mit } r &= \Vert (x, y) \Vert
\end{aligned}$$

$$g(r, \varphi, z) := (r \cos \varphi, r \sin \varphi, z), \det g_(r, \varphi, z) = r$$

$A, B \subseteq \R^3$ wie bei Substitutionsregel und $f \in C(A, \R)$:

$B := \underbrace{[R_1, R_2]}_{r} \times \underbrace{[\varphi_1, \varphi_2]}_{\varphi} \times \underbrace{[h_1, h_2]}_{z}$

Hierbei ist:
- $R_1$: innerer Radius
- $R_2$: äußerer Radius
- $\varphi_1$: min. Winkel
- $\varphi_2$: max. Winkel
- $h_1$: min. Höhe
- $h_2$: max. Höhe

$$\int_A f(x, y, z) d(x, y, z) = \int_B f(r \cos \varphi, r \sin \varphi, z) \cdot r d(r, \varphi, z)$$

### Kugelkoordinaten (n=3)

Auch wieder fast wie Polarkoordinaten, nur mit 3 Variablen, wobei anders als bei Zylinderkoordinaten, alle 3 benutzt werden:

$$\begin{aligned}
x &= r \cos \varphi \cos \vartheta \\\\
y &= r \sin \varphi \cos \vartheta \\\\
z &= z \sin \vartheta \\\\
\text{mit } r &= \Vert (x, y, z) \Vert
\end{aligned}$$

$$g(r, \varphi, \vartheta) := (r \cos \varphi \cos \vartheta, r \sin \varphi \cos \vartheta, r \sin \vartheta)$$

$$\vert det g'(r, \varphi, \vartheta) \vert = r^2 \cos \vartheta$$

$A, B \subseteq \R^3$ wie bei Prinzip von Cavalieri (also $A = g(B)$) und $f \in C(A, \R)$:

$B := \underbrace{[R_1, R_2]}_{r} \times \underbrace{[\varphi_1, \varphi_2]}_{\varphi} \times \underbrace{[\vartheta_1, \vartheta_2]}_{\vartheta}$

Hierbei ist:
- $R_1$: innerer Radius
- $R_2$: äußerer Radius
- $\varphi_1$: min. horizontaler Winkel
- $\varphi_2$: max. horizontaler Winkel
- $\vartheta_1$: min. vertikaler Winkel 
- $\vartheta_2$: max. vertikaler Winkel

$$\int_A f(x, y, z) d(x, y, z) = \int_B f(g(r, \varphi, \vartheta)) \cdot r^2 \cos \vartheta d(r, \varphi, \vartheta)$$

## Fouriertransformation

> **Definitionen**: stückweise stetig, stückweise glatt, (absolut) konvergent, (absolut) integrierbar, bandbeschränkt, schnell fallend

### Cauchyscher Hauptwert (CH)

$$CH-\int_{\infty}^{\infty} f(x) dx := lim_{\alpha\to\infty} \int_{-\alpha}^{\alpha} f(x) dx$$

> Das ist kein Minus, das ist ein Bindestrich

Bedenke, dass $\int_{-\infty}^{\infty} f(x) dx$ **nicht** so definiert ist. Die Unendlichkeiten sind unabhängig voneinander.

### Fouriertransformation von $f$:

$$\hat{f}(s) = \dfrac{1}{2\pi} \int_{-\infty}^{\infty} f(t)e^{-ist} dt$$

### Rücktransformation von $\hat{f}$:

$$f(t) = \int_{-\infty}^{\infty} \hat{f}(s)e^{ist} ds$$

### idk

Es sei $V: \lbrace f: \R \to \C: f \text{ ist stückweise stetig und absolut integrierbar} \rbrace$. Für jedes
$f \in V$ existiert die Fouriertransformierte $\hat{f}$.

Es gilt

- $V$ ist ein Vektorraum und es gilt für $f, g \in V$ und $\alpha, \beta \in \C$: $\hat{\alpha f + \beta g} = \alpha\hat{f} + \beta\hat{g}$
- Sei $f \in V, h \in \R$ und $f_h: \R \to \C$ sei definiert durch $f_h(t) := f(t+h)$.
  Dann ist $f_h \in V$ und $\hat{f_h}(s) = e^{ish}\hat{f}(s) (s \in \R)$

### Faltung

Es seien $f_1, f_2: \R \to \C$ so, dass

$$\int_{-\infty}^{\infty} f_1(t-x)f_2(x) dx$$

für jedes $t \in \R$ konvergent ist. Dann heißt die Funktion

$$f_1 * f_2: \R \to \C, (f_1 * f_2)(t) := \dfrac{1}{2\pi} \int_{-\infty}^{\infty} f_1(t-x)f_2(x) dx$$

die Faltung von $f_1$ und $f_2$

$f_1, f_2$ stetig und absolut integrierbar und $f_1$ beschränkt

$\implies f_1 * f_2$ ist stetig und absolut integrierbar ($f_1 * f_2 \in V$) und $\hat{f_1 * f_2}(s) = \hat{f_1}(s)\hat{f_2}(s)$

### idk

$f \in V$, $f'$ absolut integrierbar $\implies f' \in V$ und $\hat{f'}(s) = is\hat{f}(s)$

### schnell fallende Funktionen / Schwarz-Raum

Schwarzraum:

$$S := \lbrace f: \R \to \C: f \text{ ist schnell fallend} \rbrace$$

$f, g \in S$, $p$ Polynom:

- $f$ ist absout integrierbar und $lim_{t\to\pm\infty} f(t) = 0$
- $\forall \alpha, \beta \in \C: \alpha f + \beta g \in S$ ($S$ ist VR)
- $fg, pf, \overline{f}, \text{Re } f, \text{Im } f, t \mapsto f(-t) \in S$
- $\hat{f} \in S$ und $f(t) = \int_{-\infty}^{\infty} \hat{f}e^{ist} ds$
- $f^{(n)} \in S$ und $\hat{f^{(n)}}(s) = (is)^n \hat{f}(s)$
- $f_h \in S$ und $\hat{f_h}(s) = e^{ish}\hat{f}(s)$
- $f * g \in S$ und $\hat{f * g} = \hat{f} \cdot \hat{g}$
- Für $h := e^{-t^2/2}$ gilt $h \in S$ und $\hat{h} = \dfrac{1}{\sqrt{2\pi}}h$
Die Fouriertransformation $\mathscr{F}: f \mapsto \hat{f}$ ist eine Isometrie mit der Rücktransformation $\mathscr{G}$
als Umkehrfunktion

## Differenzialgleichungen

### Differenzialgleichung mit getrennten Veränderlichen

Es seien $I_1, I_2 \subseteq \R$ Intervalle, es seien $f \in C(I_1, \R)$ und $g \in C(I_2, \R)$. Die Differenzialgleichung

$$y'(x) = f(x)g(y(x)) \tag{1}$$

heißt eine **Differenzialgleichung mit getrennten Veränderlichen**. Gilt $g(y) \ne 0 (y \in I_2)$, so erhält man die
Lösung von *(1)* indem man die Gleichung

$$\int \dfrac{dy}{g(y)} = \int f(x) dx + c$$

nach y auflöst.

**Merkregel**: $y' = f(x)g(y) \implies \dfrac{dy}{dx} = f(x)g(y) \implies \dfrac{dy}{g(y)} = f(x)dx \implies \int \dfrac{dy}{g(y)} = \int f(x) dx + c$


### Lineare Differentialgleichungen

Es sei $I \subseteq \R$ ein Intervall und $\alpha, s: I \to \R$ stetig. Die Differentialgleichung

$$y'(x) = \alpha(x)y(x) + s(x) \tag{2}$$

heißt eine **lineare Differentialgleichung** und $s$ heißt **Störfunktion**. Die Differentialgleichung

$$y'(x) = \alpha(x)y(x) \tag{3}$$

heißt die zu *(2)* gehörige **homogene Gleichung**. Ist $s \ne 0$ so heißt die Gleichung *(2)* **inhomogen**.

Sei $\beta$ eine Stammfunktion von $\alpha$ auf $I$, $y: I \to \R$ eine Funktion:

$$\exists c \in \R: y(x) = ce^{\beta(x)} \iff \text{y ist eine Lösung von (3) auf I}$$

$$\exists c \in \R: y(x) = y_p(x) + ce^{\beta(x)} \iff \text{y ist eine Lösung von (2) auf I, } y_p \text{ ist spezielle Lösung von (2) auf I}$$

$y_p(x) = c(x)e^{\beta(x)}$ mit unbekannter Funktion $c$ ist eine speziellen Lösung von *(2)*.

Es sei $x_0 \in I$ und $y_0 \in \R$. Dann hat das AWP $y'(x) = \alpha(x)y(x) + s(x)$ mit $y(x_0) = y_0$ auf $I$ genau
eine Lösung.

Um das unbekannte $c(x)$ zu berechnen kann man wie folgt vorgehen:

$y_p'(x) \stackrel{!}{=} \alpha(x)y_p(x) + s(x)$

$\displaystyle{\implies c(x) \int s(x)e^{-\beta(x)}}$


### Bernoullische Differentialgleichung

Man kann eine Bernoullische Differentialgleichung zu einer linearen Differentialgleichung umformen.

Sei $I \subseteq \R$ ein Intervall, $g, h \in C(I, \R)$ und $\alpha \in \R$. Die Differentialgleichung

$$y'(x) + g(x)y(x) + h(x)y(x)^{\alpha} = 0 \tag{*}$$

heißt **Bernoullische Differentialgleichung**. Für $\alpha \in \lbrace 0, 1 \rbrace$ erhält man eine lineare
Differentialgleichung. Ob homogen oder nicht
hängt von $h$ ab.

Für $\alpha \in \R \setminus \lbrace 0, 1 \rbrace$.

Setze $z(x) = (y(x))^{1-\alpha}$. Nun leitet man $z$ ab und erhält $z'(x) = \dots$. Hiermit hat man dann nun
eine **lineare Differentialgleichung** für $z$.

Wenn man dann eine Lösung $z$ gefunden hat auf $I$ kann man diese in $y(x) := z(x)^{\frac{1}{1-\alpha}}$ einsetzen
($x \in I_1 \subseteq I$). Hierbei muss man darauf achten, dass $z(x)^{\frac{1}{1-\alpha}}$ nur auf $I_1$ eine
Lösung bietet und nicht unbedingt auf komplett $I$. Dann ist $y$ eine Lösung für *(&#42;)* auf $I_1$.

### Riccatische Differentialgleichung

Seien $g, h, k \in C(I, \R)$. Die Differentialgleichung

$$y'(x)+g(x)y(x) + h(x)y^2(x) = k(x) \tag{**}$$

heißt **Riccatische Differentialgleichung**. Hat man eine Lösung $y_2$ von *(&#42;&#42;)* so kann man sich
ein $u := y_1 - y_2$ aufstellen, wobei $y_1$ eine weitere unbekannte Lösung ist. Dieses $u$ kann man dann ableiten zu:

$$u'(x) = -(g(x) + 2h(x)y_2))u(x) - h(x)u^2(x)$$

Dies hat die Form einer Bernoullischen Differentialgleichung wodurch man dann weitere Lösungen für die ursprüngliche
Differentialgleichung erhalten kann.


## Lineare Systeme mit konstanten Koeffizienten

**Definitionen**: Stammfunktion (für Multidimensionale Funktionen)

Sie $A = (a_{jk})$ eine reelle $n \times n$-Matrix und $b_j: I \to \R$ stetig ($j = 1, \dots, n$).

Ein **lineares Differentialsystem** sieht nun wie folgt aus:

$$\begin{alignedat}{5}
  &      y'_1(x) &= a_{11}y_1(x) + a_{12}y_2(x) & + \dots + & a_{1n}y_n(x) & + b_1(x) \\\\
  &      y'_2(x) &= a_{21}y_1(x) + a_{12}y_2(x) & + \dots + & a_{1n}y_n(x) & + b_1(x) \\\\
  & \quad \vdots & \vdots \quad\quad            &           & \vdots       &          \\\\
  &      y'_n(x) &= a_{n1}y_1(x) + a_{12}y_2(x) & + \dots + & a_{nn}y_n(x) & + b_n(x)
\end{alignedat}$$

Mit $y := (y_1, \dots, y_n)^T$ und $b := (b_1, \dots, b_n)^T$ schreibt man dann

$$y'(x) = Ay(x) + b(x) \tag{1}$$

Nun ist

$$y'(x) = Ay(x) \tag{2}$$

das zu *(1)* zugehörige homogene System. *(1)* ist selbst schon homogen, falls $b \ne 0$

Die Lösungen von *(2)* sind auf ganz $\R$ definiert und bilden n-dimensionalen Vektorraum $V := \lbrace y: \R \to \R^n: y \text{ ist eine Lösung von (2)}$.
Diesen VR nennt man auch **Fundamentalsystem** von *(2)*.

$$\exists y_h \in V: y(x) = y_p(x) + y_h(x) (x \in I) \iff \text{y ist eine Lösung von (1) auf I}$$

AWP sieht gleich aus wie schon bei linearen Differentialgleichungen, nur diesmal mit Vektoren.

Sei $\lambda \in \R$ Eigenwert von $A$ und $v \in \R^n \setminus \lbrace 0 \rbrace$ der zugehörige Eigenvektor.

Mit $y(x) = e^{\lambda x}v$ gilt

$$y'(x) = \lambda e^{\lambda x}v = e^{\lambda x}Av = A(e^{\lambda x}v) = Ay(x) \quad (x \in \R)$$

**Lösungsverfahren für homogene Gleichungssysteme** $y'(x) = Ay(x)$

Es gilt, dass wenn $\lambda_0 \in \C$ ist und $p(\lambda_0) = 0$ gilt auch $p(\overline{\lambda_0}) = 0$ gelten muss.

1. Bestimme die verschiedenen Eigenwerte $\lambda_1, \dots, \lambda_r$ von $A$ ($r \lt n$) und deren algebraische
   Vielfachheit $k_1, \dots, k_r$. Stelle charakteristisches Polynom $p(\lambda) = (-1)^n(\lambda-\lambda_1)^k \dots$
   auf.
2. Sortiere Eigenwerte in $\R$ und $\C \setminus \R$. Seien $\lambda_1, \dots, \lambda_m$ reellwertig und $\mu_1, \dots, \mu_s$
   komplex. Sortiere dabei auch gleichzeitig alle komplexen Eigenwerte die nur das komplex konjugierte eines anderen
   Eigenwertes sind aus. $M := \lbrace \lambda_1, \dots, \lambda_m, \mu_1, \dots \mu_s \rbrace$.
3. Bestimme Hauptraum $V_j$ für alle $\lambda_j \in M$ (hiermit sind alle Eigenwerte gemeint, nicht nur die strikt reellwertigen)
4. Es sei $\lambda_j \in M$, $v \ V_j$ Basisvektor.
   Setze $y(x) := e^{\lambda_j}x \left( v = \displaystyle{\sum_{n=1}^{k_j-1} \dfrac{x^n}{n!} (A - \lambda_jI)^n v} \right)$

   Fall $\lambda_j \in \R$: Dann ist $y(x) \in \R^n$ und $y$ eine Lösung des homogenen Gleichungssystem auf $\R$

   Fall $\lambda_j \in \C \setminus \R$: Dann ist $y(x) \in \C^n$. Zerlege $y(x)$ komponentenweise in Real- und
   Imaginärteil: $y^{(1)}(x) + iy^{(2)}(x)$. Dann sind $y^{(1)}$ und $y^{(2)}$ linear unabhängige Lösungen des
   homogenen Gleichungssystems auf $\R$.
5. Führt man 4. für jedes $\lambda_j \in M$ und jeden Basisvektor von $V_j$ durch, so erhält man ein Fundamentalsystem des
   homogenen Gleichungssystems und ist somit fertig.

Es sei $y^{(1)}, y^{(2)}, \dots, y^{(n)}$ ein Fundamentalsystem der homogenen Gleichung $y'(x) = Ay(x)$

Setze $Y(x) := (y^{(1)}(x), \dots, y^{(n)}(x)) (x \in \R$

Für jedes $x \in \R$ ist $Y(x)$ eine reelle $n \times n$-Matrix mit $j$-ter Spalte $y^{(j)}(x)$. Sie nennt man ebenfalls
**Fundamentalsystem** oder auch **Fundamentalmatrix**. Die Lösungen des inhomogenen Gleichungssystemes sind somit die
Funktionen $y: \R \to \R^n$ der Form $y(x) = Y(x)c \quad (c \in \R^n)$

Um nun eine spezielle Lösung $y_p: I \to \R^n$ des inhomogenen Gleichungssystems zu finden geht man wie folgt vor:

$$y_p(x) = Y(x)c(x)$$

Suche ein passendes $c: I \to \R^n$. Dies findet man indem man

$$c(x) = \int (Y(x))^{-1}b(x) dx$$

berechnet. Damit hat man dann eine allgemeine Lösung:

$$y(x) = Y(x)c  + y_p(x) \quad (c \in \R^n)$$

## Lineare Differentialgleichungen n-ter Ordnung mit konstanten Koeffizienten

Sei $y: I \to \R$ $n$-mal db. auf $I$. Dann ist

$$Ly := y^{(n)} + a_{n-1}y^{(n-1)} + \dots + a_{1}y^{(1)} + a_0y$$

Die Differentialgleichung

$$(Ly)(x) = b(x) \tag{1}$$

heißt **lineare Differentialgleichung n-ter Ordnung mit konstanten Koeffizienten**. Wie sonst auch gibt es
eine homogene Gleichung für $b = 0$ *(2)* und eine inhomogene Gleichung für $b \ne 0$.

$V := \lbrace y: \R \to \R: \text{y ist eine Lösung von (2)} \rbrace$ ist ein VR mit dim. $n$. Jede Basis von $V$
heißt ein Fundamentalsystem von *(2)*.

$$\exists y_h \in V \forall x \in I: y(x) = y_p(x) + y_h(x) \iff \text{y ist eine Lösung von (1) auf I}$$

Es gibt wie sonst auch Anfangswertprobleme, hierfür gibt es immer eine eindeutige Lösung.

**Lösungsmethode für *(2)***: $y^{(n)}(x) + a_{n-1}y^{(n-1)}(x) + \dots + a_0y(x) = 0$ 

1. charakteristisches Polynom aufstellen in der Form $p(\lambda) = (\lambda - \lambda_1)^{k_1} \dots$
2. Aufteilen der Eigenwerte in rein reellwertige Nullstellen, rein komplexe Nullstellen und komplexe Nullstellen die das
   komplex konjugierte einer anderen Nullstelle sind. Wie zuvor wirft man letzteres einfach weg, der Rest kommt in die Menge $M$
3. Für alle $\lambda_j \in M$

   Fall $\lambda_j \in \R$:

   $$e^{\lambda_j}x, xe^{\lambda_j}x, \dots, x^{k_j-1}e^{\lambda_j}x$$

   sind linear unabhängige Lösungen von *(2)*.

   Fall $\lambda_j \in \C \setminus \R$:

   schreibe $\lambda_j = \alpha + i\beta$

   $$\begin{alignedat}{4}
   &e^{\alpha x}\cos \beta x&,\\; xe^{\alpha x}\cos \beta x&,\\; \dots,\\; x^{k_j-1}e^{\alpha x}\cos \beta x& \\\\
   &e^{\alpha x}\sin \beta x&,\\; xe^{\alpha x}\sin \beta x&,\\; \dots,\\; x^{k_j-1}e^{\alpha x}\sin \beta x&
   \end{alignedat}$$

   sind linear unabhängige Lösungen von *(2)*
4. Diese insgesamt $n$ Lösungen bilden nun ein Fundamentalsystem von *(2)*

**Lösungsmethode für spezielle Lösung *(1)***: $(Ly)(x) = b(x)$

Es seien $\gamma, \delta \in \R, m \N_0, q$ ein Polynom vom Grad $m$ und $b$ hat die Form

$$b(x) = q(x)e^{\gamma x} \cos(\delta x) \text{ oder } b(x) = q(x)e^{\gamma x} \sin(\delta x)$$

Sei $p$ das charakteristische Polynom von $(Ly)(x) = 0$

Fall $p(\gamma + i\delta) \ne 0$:

$$y_p(x) := (\hat{q}(x)\cos(\gamma x) + \tilde{q} \sin(\delta x))e^{\gamma x}$$

Fall $\gamma + i\delta$ ist eine $\upsilon$-fache Nullstelle von $p$. Wähle den Ansatz:

$$y_p(x) := x^{\upsilon} (\hat{q}(x)\cos(\delta x) + \tilde{q}(x)\sin(\delta x))e^{\gamma x}$$

In beiden Fällen sind $\hat{q}$ und $\tilde{q}$ Polynome vom Grad $m$. In beiden Fällen führt der Ansatz zu einer
speziellen Lösung $y_p$ von *(1)*.

Die Polynome $\hat{q}$ und $\tilde{q}$ bekommt man heraus indem man das $b(x)$ in *(1)* einsetzt und guckt, für welche
Polynome die Gleichung aufgeht

$$(Ly)(x) \stackrel{!}{=} b(x)$$

Hierfür ist die Beschränkung des Grades der Polynome sehr essentiell.
