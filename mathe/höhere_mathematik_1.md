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

$\sinh(x) = \dfrac{e^x}{2} - \dfrac{e^{-x}}{2}, \quad \sin(x) = \dfrac{e^{ix}}{2} - \dfrac{e^{-ix}}{2}$

$\cosh(x) = \dfrac{e^x}{2} + \dfrac{e^{-x}}{2}, \quad \cos(x) = \dfrac{e^{ix}}{2} + \dfrac{e^{-ix}}{2}$

$\sin^2(x) + \cos^2(x) = 1$

$\sin^2(x) - \cos^2(x) = -\cos(2x)$

$\sin(x) = \sqrt{1 - \cos^2(x)}$

$\cos(x) = \sqrt{1 - \sin^2(x)}$

$\cos(x) = \cosh(ix), \quad \cos(ix) = \cosh(x)$

$\sin(x) = \sinh(ix), \quad \sin(ix) = \sinh(x)$


## bekannte Folgen & Reihen

### Exponentialfolge

$$\lim_{n\to\infty} (\tfrac{n+1}{n})^n = \lim_{n\to\infty} (\tfrac{n}{n-1})^n = e$$

> das ist keine legale Umformung, das folgt aus $(\tfrac{n}{n+1})^n = \tfrac{1}{(\tfrac{n+1}{n})^n} \to \tfrac{1}{e}$

$$\lim_{n\to\infty} (1 + \tfrac{x}{n})^n = e^x$$

$$\lim_{n\to\infty} (\tfrac{n-1}{n})^n = \lim_{n\to\infty} (\tfrac{n}{n+1})^n = \tfrac{1}{e}$$

### geometrische Reihe

$$\sum_{n=0}^{\infty} x^n = \dfrac{1}{1-x} \quad (\vert x \vert < 1)$$

### harmonische Reihe

$$\sum_{n=1}^{\infty} \dfrac{1}{n} \text{ divergiert}$$

## Alternierende harmonische Reihe

$$\sum_{n=1}^{\infty} \dfrac{(-1)^{n+1}}{n} = \ln(2)$$

## Exponentialreihe

$$\sum_{n=0}^{\infty} \dfrac{x^n}{n!} = e^x$$

Insbesondere ist $\displaystyle{\sum_{n=0}^{\infty} \dfrac{1}{n!} = e}$

## Sinus, Cosinus

$$\cos(x) := \sum_{n=0}^{\infty} (-1)^n \dfrac{x^{2n}}{(2n)!}$$

$$\sin(x) := \sum_{n=0}^{\infty} (-1)^n \dfrac{x^{2n+1}}{(2n+1)!}$$

$$\cosh(x) := \sum_{n=0}^{\infty} \dfrac{x^{2n}}{(2n)!}$$

$$\sinh(x) := \sum_{n=0}^{\infty} \dfrac{x^{2n+1}}{(2n+1)!}$$

> Der Unterschied zwischen $\cos$ und $\cosh$ ist einfach nur, dass $(-1)^n$ weg fällt, $\sinh$ analog.

## Sandwichkriterium

Sei $(b_n)_{n=0}^{\infty}$ eine Folge. Wenn man Folgen $(a_n)_{n=0}^{\infty}$ und $(c_n)_{n=0}^{\infty}$ findet für die gilt:

$$a_n \ge b_n \ge c_n \quad (\forall n \in \N_0)$$

und $(a_n)$ und $(c_n)$ gegen Grenzwerte $a$ und $c$ konvergieren gilt, dass $(b_n)$ auch
konvergent ist und gegen ein $b \in [a, c]$ konvergiert.

Hiermit kann man also den Grenzwert nach oben und unten abschätzen und bestenfalls sogar
Folgen $(a_n)$ und $(c_n)$ finden für die $a =c$ gilt, womit dann $a = b = c$ gelten muss.

> Die genauen Startwerte für $n$ sind nicht ganz so streng zu sehen, sie könnten auch $n=1$ oder ähnliches sein.

## Monotoniekriterium

Die Folge $(a_n)$ sei monoton wachsend und nach oben beschränkt. Dann ist $(a_n)$ konvergent
und $\lim_{n\to\infty} a_n = \sup_{n\in\N} a_n$.

Die Folge $(a_n)$ sei monoton fallend und nach unten beschränkt. Dann ist $(a_n)$ konvergent
und $\lim_{n\to\infty} a_n = \inf_{n\in\N} a_n$.

Sei $(a_n)$ eine Folge, $s_n = \sum_{k=1}^{n} a_k$. Sind alle $a_k \ge 0$ und ist $(s_n)$ beschränkt,
so ist $\sum_{n=1}^{\infty} a_n = \lim_{n\to\infty} s_n$ konvergent.

## Cauchykriterium

$$\sum_{n=1}^{\infty} a_n \text{ ist konvergent} \iff \forall \epsilon > 0 \\; \exists n_0 \in \N \\; \forall m > n \gt n_0: \vert \sum_{k=n+1}^{m} a_k \vert < \epsilon$$

## Leibnizkriterium

Es sei $(b_n)$ eine Folge mit:

1. $(b_n)$ ist monoton fallend,
2. $b_n \to 0 \quad (n \to \infty)$

Dann ist $\displaystyle{\sum_{n=1}^{\infty} (-1)^{n+1} b_n}$ konvergent

## Majorantenkriterium

Gilt $\vert a_n \vert \le b_n \text{ ffa } n \in \N$ und ist $\displaystyle{\sum_{n=1}^{\infty}} b_n$ konvergent, so ist
$\displaystyle{\sum_{n=1}^{\infty} a_n}$ absolut konvergent.

## Minorantenkriterium

Gilt $a_n \gt b_n > 0 \text{ ffa } n \in \N$ und ist $\displaystyle{\sum_{n=1}^{\infty} b_n}$ divergent, so ist
$\displaystyle{\sum_{n=1}^{\infty} a_n}$ divergent.

## Wurzelkriterium

Es sei $(a_n)$ eine Folge, $c_n := \sqrt[n]{\vert a_n \vert} \quad (n \in \N)$.

1. Ist $(c_n)$ ungeschränkt, so ist $\displaystyle{\sum_{n=1}^{\infty} a_n}$ divergent
2. Es sei $(c_n)$ beschränkt und $\alpha := \limsup_{n\to\infty} c_n$. Dann gilt:
   - Ist $\alpha < 1$, so ist $\displaystyle{\sum_{n=1}^{\infty} a_n}$ absolut konvergent.
   - Ist $\alpha > 1$, so ist $\displaystyle{\sum_{n=1}^{\infty} a_n}$ divergent.

   Im Fall $\alpha = 1$ ist keine allgemeine Aussage möglich.

## Quotientenkriterium

Es sei $a_n \ne 0$ für fast alle $n \in \N$ und $c_n := \vert \dfrac{a_{n+1}}{a_n} \vert$.

- Ist $c_n \gt 1$ für fast alle $n \in \N$, so ist $\sum_{n=1}^{\infty} a_n$ divergent
- Es sei $(c_n)$ beschränkt, $\alpha := \limsup_{n\to\infty} c_n$ und $\beta := \liminf_{n\to\infty} c_n$. Dann gilt
  - Ist $\alpha < 1$, so ist $\sum_{n=1}^{\infty} a_n$ absolut konvergent
  - Ist $\beta > 1$, so ist $\sum_{n=1}^{\infty} a_n$ divergent. 

## L'Hôpital

Sei $\displaystyle{\lim_{x \to x_0} \tfrac{f(x)}{g(x)}}$ zu bestimmen. L'Hôpital ist genau dann anwendbar, wenn
$\displaystyle{\lim_{x \to x_0} f(x)}$ und $\displaystyle{\lim_{x \to x_0} g(x)}$ entweder beide $0$ oder beide $\infty$ sind.

Wenn L'Hôpital anwendbar ist, gilt folgendes:

$\displaystyle{\lim_{x \to x_0} \tfrac{f(x)}{g(x)} = \lim_{x \to x_0} \tfrac{f'(x)}{g'(x)}}$

**solange** $\displaystyle{\lim_{x \to x_0} \tfrac{f'(x)}{g'(x)}}$ definiert ist.

## Lipschitz-Stetigkeit

$f: D \to \R$ heißt auf $D$ **Lipschitz-stetig**:
$\iff \exists L \gt 0 \\; \forall x,y \in D: \vert f(x) - f(y) \vert \lt L\vert x - y \vert$

Wobei $L$ die Lipschitz-Konstante ist für die Funktion. Man kann dies eigentlich als eine betragsmäßige Abschätzung
für die Steigung der Funktion ansehen.

Wenn eine Funktion Lipschitz-stetig ist, dann ist sie auch gleichmäßig stetig. Die Umkehrung gilt nicht immer.

## Punktweise Konvergenz

Eine Funktionsfolge $f_n: D \to \R, \\; n \in \N$ ist punktweise konvergent gegen die Funktion $f: D \to \R$, wenn
für alle $x \in D$ gilt:

$$\lim_{n\to\infty} f_n(x) = f(x)$$

## Gleichmäßige Konvergenz

Wenn eine Funktion schon punktweise konvergent ist kann sie zudem auch noch gleichmäßig konvergent sein. Dafür muss
folgendes gelten:

$$\lim_{n\to\infty} \sup_{x \in D_f} \vert f_n(x) - f(x) \vert = 0$$

wobei $f(x)$ die Grenzfunktion ist. Der bedeutende Unterschied zu punktweise konvergent ist hierbei, dass sich das
$x$ in Abhängigkeit von $n$ ändern kann. Wenn man also ein $x(n)$ findet, wofür $\vert f_n(x) - f(x) \vert$ nicht gegen
$0$ geht, hat man gezeigt dass die Funktionsfolge nicht gleichmäßig konvergent ist.

Zeigen, dass das $n$ für die Wahl des $x$ irrelevant ist erfolgt meist durch rauskürzen des $x$'es, sodass es hinterher garnicht
mehr vorkommt, dies kann auch wie man in *Satz 8.1a* sehen kann durch Abschätzen gemacht werden.

> Falls $f$ nicht stetig ist, ist direkt klar, dass $f_n$ nicht gleichmäßig konvergent ist.

### Nützliche Sätze

**Satz 8.1a**:
Die Folge $(f_n)$ konvergiere auf $D$ punktweise gegen $f: D \to \R$. Weiter sei $(a_n)$ eine Folge mit $\alpha_n \to 0, m \in \N$ und

$$\forall n \ge m \\; \forall x \in D: \vert f_n(x) - f(x) \vert \le \alpha_n$$

Dann konvergiert $(f_n)$ auf $D$ gleichmäßig gegen $f$.

**Satz 8.1b / Kriterium von Weierstraß**:
Es sei $m \in \N, \\; (c_n)$ eine Folge in $[0, \infty), \\; \displaystyle{\sum_{n=1}^{\infty}} c_n$ sei konvergent und

$$\forall n \ge m \\; \forall x \in D: \\; \vert f_n(x) \vert \le c_n$$

Dann konvergiert $\displaystyle{\sum_{n=1}^{\infty} c_n}$ auf $D$ gleichmäßig.

## Umkehrsatz

Es sei $D \subseteq \R^n$ offen, $f \in C^1(D, \R^n)$ und $x_0 \in D$. Ist $\det f'(x_0) \ne 0$, so existiert ein $\epsilon > 0$ mit:

- $U_{\epsilon}(x_0) \subseteq D$ und $f(U_{\epsilon}(x_0))$ ist offen
- $f$ ist auf $U_{\epsilon}$ injektiv,
- $f^{-1}: f(U_{\epsilon}(x_0)) \to U_{\epsilon}(x_0)$ ist in $C^1(f(U_{\epsilon}(x_0)), \R^n)$,<br />
  $\det f'(x) \ne 0 (x \in U_{\epsilon}(x_0))$ und<br />
  $(f^{-1})'(y) = (f'(f^{-1}(y)))^{-1} (y \in f(U_{\epsilon}(x_0)))$

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

Man kann auch das Quotientenkriterium anwenden um den Konvergenzradius zu berechnen anstatt des Wurzelkriteriums:

Betrachte:

$$c_n = \vert \dfrac{a_n}{a_{n+1}} \vert, \quad r = \lim_{n\to\infty} c_n$$

> Beachte: dies ist der Kehrwert des normalen Quotientenkriteriums, dadurch erhält man auch direkt $r$.
