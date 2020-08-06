# Höhere Mathematik I

## häufig genutzte Funktionen

| $x$      | $0$ | $\dfrac{1}{4}\pi$      | $\dfrac{1}{2}\pi$ | $\pi$ |
|----------|-----|------------------------|-------------------|-------|
| $\sin x$ | $0$ | $\dfrac{1}{2}\sqrt{2}$ | $1$               | $0$   |
| $\cos x$ | $1$ | $\dfrac{1}{2}\sqrt{2}$ | $0$               | $-1$  |
| $\tan x$ | $0$ | $1$                    | $\infty$          | $0$   |

| $f$          | $f'$                   |
|--------------|------------------------|
| $\ln(x)$     | $\dfrac{1}{x}$         |
| $\tan(x)$    | $\dfrac{1}{\cos^2(x)}$ |
| $\arctan(x)$ | $\dfrac{1}{x^2+1}$     |
| $\sinh(x)$   | $\cosh(x)$             |
| $\cosh(x)$   | $\sinh(x)$             |

$$\sinh(x) = \dfrac{e^x}{2} - \dfrac{e^{-x}}{2}$$

$$\cosh(x) = \dfrac{e^x}{2} + \dfrac{e^{-x}}{2}$$

## geometrische Reihe

$$\sum_{n=0}^{\infty} x^n = \dfrac{1}{1-x} (\vert x \vert < 1)$$

## Wurzelkriterium

Sei $(a_n)$ eine Folge, $c_n := \sqrt[n]{\vert a_n \vert}$.

- Ist $(c_n)$ unbeschränkt, so ist $\sum_{n=1}^{\infty} a_n$ divergent.
- Es sei $(c_n)$ beschränkt und $\alpha := \limsup_{n\to\infty} c_n$. Dann ist
  - Ist $\alpha < 1$, so ist $\sum_{n=1}^{\infty} a_n$ absolut konvergent.
  - Ist $\alpha > 1$, so ist $\sum_{n=1}^{\infty} a_n$ divergent.
  - Im Falle $\alpha = 1$ ist keine allgemeine Aussage möglich.

## Quotientenkriterium

Es sei $a_n \ne 0$ für fast alle $n \in \N$ und $c_n := \vert \dfrac{a_{n+1}}{a_n} \vert$.

- Ist $c_n \gt 1$ für fast alle $n \in \N$, so ist $\sum_{n=1}^{\infty} a_n$ divergent
- Es sei $(c_n)$ beschränkt, $\alpha := \limsup_{n\to\infty} c_n$ und $\beta := \liminf_{n\to\infty} c_n$. Dann gilt
  - Ist $\alpha < 1$, so ist $\sum_{n=1}^{\infty} a_n$ absolut konvergent
  - Ist $\beta > 1$, so ist $\sum_{n=1}^{\infty} a_n$ divergent. 

## L'Hôpital

Sei $\lim_{x \to x_0} \dfrac{f(x)}{g(x)}$ zu bestimmen. L'Hôpital ist genau dann anwendbar, wenn
$\lim_{x \to x_0} f(x)$ und $\lim_{x \to x_0} g(x)$ entweder beide $0$ oder beide $\infty$ sind.

Wenn L'Hôpital anwendbar ist, gilt folgendes:

$\lim_{x \to x_0} \frac{f(x)}{g(x)} = \lim_{x \to x_0} \frac{f'(x)}{g'(x)}$

**solange** $\lim_{x \to x_0} \frac{f'(x)}{g'(x)}$ definiert ist.

## Lipschitz-Stetigkeit

$f: D \to \R$ heißt auf $D$ **Lipschitz-stetig**: $\iff \exists L \gt 0 \forall x,y \in D: \vert f(x) - f(y) \vert \lt L\vert x - y \vert$

Wobei $L$ die Lipschitz-Konstante ist für die Funktion. Man kann dies eigentlich als eine betragsmäßige Abschätzung
für die Steigung der Funktion ansehen.

Wenn eine Funktion Lipschitz-stetig ist, dann ist sie auch gleichmäßig stetig. Die Umkehrung gilt nicht immer.

## Umkehrsatz

Es sei $D \subseteq \R^n$ offen, $f \in C^1(D, \R^n)$ und $x_0 \in D$. Ist $\det f'(x_0) \ne 0$, so existiert ein $\epsilon > 0$ mit:

- $U_{\epsilon}(x_0) \subseteq D$ und $f(U_{\epsilon}(x_0))$ ist offen
- $f$ ist auf $U_{\epsilon}$ injektiv,
- $f^{-1}: f(U_{\epsilon}(x_0)) \to U_{\epsilon}(x_0)$ ist in $C^1(f(U_{\epsilon}(x_0)), \R^n)$, $\det f'(x) \ne 0 (x \in U_{\epsilon}(x_0))$
  und $(f^{-1})'(y) = (f'(f^{-1}(y)))^{-1} (y \in f(U_{\epsilon}(x_0)))$

## Potenzreihen

Eine Reihe der Form

$$\sum_{n=0}^{\infty} a_n(x-x_0)^n$$

mit $(a_n)_{n=0}^{\infty}$ eine Folge in $\R$, $x_0 \in \R$ heißt Potenzreihe. Nun ist die Frage für welche $x$ konvergiert
so eine Potenzreihe.

$$
\rho := \begin{cases}
  \infty                                         &\text{if } \sqrt[n]{\vert a_n \vert} \text{ unbeschränkt} \\\\
  \limsup_{n\to\infty} \sqrt[n]{\vert a_n \vert} &\text{if } \sqrt[n]{\vert a_n \vert} \text{ beschränkt}
\end{cases}
$$

$$
r := \begin{cases}
  0,             &\text{if } \rho = \infty \\\\
  \infty         &\text{if } \rho = 0 \\\\
  \frac{1}{\rho} &\text{if } \rho \in (0, \infty)
\end{cases}
$$

Kurz "$r = \frac{1}{\rho}$". $r$ ist der Konvergenzradius (KR) der Potenzreihe.

- Ist $r = 0$, so konv. die Potenzreihe nur für $x = x_0$
- Ist $r = \infty$, so konv. die Potenzreihe absolut für jedes $x \in \R$
- Ist $r \in (0, \infty)$, so konv. die Potenzreihe absolut in einem Radius $r$ um $x_0$ herum, also
  $\vert x - x_0 \vert \lt r$ und div. für jedes anderer $x$ mit Ausnahme der Ränder, also $\vert x - x_0 \vert > r$.
  Über die Ränder (also $x = x_0 \pm r$) ist keine Aussage im allgemeinen möglich.
