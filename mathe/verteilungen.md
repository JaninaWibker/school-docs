# Verteilungen

## Diskrete Verteilungen

### Gleichverteilung

Die Gleichverteilung $\text{U}(a, b)$ hat die Parameter $a, b$ mit $-\infty < a < b < \infty$.

> U steht für *uniform*

Die Dichte ist wie folgt definiert:

$$f(t) := \begin{cases}
   \frac{1}{b-a} &,\\; a < t < b \\\\
   0 &,\\; \text{sonst}
\end{cases}$$

**Faltung / Addition**: Für $X \thicksim U(a, b)$ und $Y \thicksim U(c, d)$ gilt:

$$f_{X+Y}(t) := \begin{cases}
  0                               &\text{ if } t \le \min(a, c) \\\\
  \dfrac{1}{b-a}                  &\text{ if } a < t < b \wedge \overline{c < t < d} \\\\
  \dfrac{1}{b-a} + \dfrac{1}{d-c} &\text{ if } a < t < b \wedge c < t < d \\\\
  \dfrac{1}{d-c}                  &\text{ if } \overline{a < t < b} \wedge c < t < d \\\\
  0                               &\text{ if } t \ge \max(b, d)
\end{cases}$$

**Erwartungswert**: Für $X \thicksim \text{U}(a, b)$ ist $\E(X) = \dfrac{a+b}{2}$.

**Varianz**: Für $X \thicksim $ ist $\V(X) = \dfrac{(b-a)^2}{12}$.

### Binomialverteilung

Die Binomialverteilung $\text{Bin}(n, p)$ hat die Parameter $n, p$ mit $n \in \N$ und $0 \le p \le 1$.

Die Binomialverteilung wird benutzt, wenn man mehrere Zufallsexperimente "ohne Zurücklegen" macht und die Wahrscheinlichkeit braucht, dass eine gewisse Anzahl an Ereignissen eintritt.

Die Dichte ist wie folgt definiert:

$$k \to f(k) = \binom{n}{k} \cdot p^k \cdot (1 - p)^{n-k}, \\; k = 0,\\; \dots,\\; n$$

**Faltung / Addition**: Seien $X \thicksim \text{Bin}(m, p)$ und $Y \thicksim \text{Bin}(n, p)$, dann ist $X + Y \thicksim \text{Bin}(m+n, p)$.

**Erwartungswert**: Für $X \thicksim \text{Bin}(n, p)$ ist $\E(X) = n \cdot p$.

**Varianz**: Für $X \thicksim \text{Bin}(n, p)$ ist $\V(X) = n \cdot p \cdot (1-p)$.

### Hypergeometrische Verteilung

Die Hypergeometrische Verteilung $\text{Hyp}(n, r, s)$ hat die Parameter  $n, r, s \in \N$ mit $n \le r + s$

Die Dichte ist wie folgt definiert:

$$k \to f(k) = \dfrac{\dbinom{r}{k} \cdot \dbinom{s}{n-k}}{\dbinom{r + s}{n}}, \\; \max(0, n-s) \le k \le \min(r, n)$$

**Faltung / Addition**: TODO

**Erwartungswert**: Für $X \thicksim \text{Hyp}(n, r, s)$ ist $\E(X) = n \cdot \dfrac{r}{r + s}$.

**Varianz**: Für $X \thicksim \text{Hyp}(n, r, s)$ ist $\V(X) = n \cdot p \cdot (1-p) \cdot (1 - \frac{n-1}{r+s-1})$, mit $p = \dfrac{r}{r+s}$.

### Multinomial-Verteilung

Der Zufallsvektor $(X_1, \dots, X_s)$ besitzt eine Multinomial-Verteilung mit Parametern $n$ und $p_1, \dots, p_s$ mit $(s \ge 2, n \ge 1, p_1 \ge 0, \dots, p_s \ge 0, p_1+ \dots + p_s = 1)$ falls gilt:

// TODO: irgendwas tun damit dies hier nichtmehr so lang ist
$$\mathbb{P(X_1 = k_1, \dots, X_s = k_s)} = \begin{cases}
   \frac{n!}{k_1! k_2! \dots k_5!}p_1^{k_1} p_2^{k_2} \dots p_s^{k_s} &,\\; k_1, \dots,\\; k_s \in \N_0, k_1 + \dots + k_s = n \\\\
   0 &,\\; \text{sonst}
\end{cases}$$

**Faltung / Addition**: TODO

**Erwartungswert**: TODO

**Varianz**: TODO

### Poisson-Verteilung

Die Poisson-Verteilung $\text{Po}(\lambda)$ hat den Parameter $\lambda \R: \lambda \gt 0$.

Die Dichte ist wie folgt definiert:

$$k \mapsto f(k) := e^{- \lambda} \cdot \frac{\lambda^k}{k!}, \\; k \in \N$$

**Faltung / Addition**: Seien $X \thicksim \text{Po}(\lambda)$ und $Y \thicksim \text{Po}(\mu)$, dann ist $X + Y \thicksim \text{Po}(\lambda+ \mu)$.

**Erwartungswert**: Für $X \thicksim \text{Po}(\lambda)$ ist $\E(X) = \lambda$.

**Varianz**: Für $X \thicksim \text{Po}(\lambda)$ ist $\V(X) = \lambda$.

### Negative Binomialverteilung

Die negative Binomialverteilung $\text{Nb}(r, p)$ hat die Parameter $r, p$ mit $r \in \N, 0 < p < 1$.

Die Dichte ist wie folgt definiert:

$$k \mapsto f(k) := \dbinom{k + r - 1}{k}p^r(1 - p)^k, \\; k \in \N_0$$

**Faltung / Addition**: Seien $X \thicksim \text{Nb}(r, p)$ und $Y \thicksim \text{Nb}(s, p)$, dann ist $X + Y \thicksim \text{Nb}(r + s, p)$

**Erwartungswert**: Für $X \thicksim \text{Nb}(r, p)$ ist $\E(X) = r \cdot \dfrac{1-p}{p}$.

**Varianz**: Für $X \thicksim \text{Nb}(r, p)$ ist $\V(X) = r \cdot \dfrac{1-p}{p^2}$.

**Nutzen**: </br>
Wahrscheinlichkeit $k$ Nieten vor dem $r$-Treffer

#### Geometrische Verteilung

Die geometrische Verteilung $\text{G}$ hat den Parameter $p$ mit $0 < p < 1$.

Sie ist ein Spezialfall der negative Binomialverteilung $\text{Nb}(1, p)$ also

$$k \mapsto f(k) = p(1-p)^k, \\; k \in \N_0$$

**Faltung / Addition**: TODO

**Erwartungswert**: Für $X \thicksim \text{G}(r, p)$ ist $\E(X) = \dfrac{1-p}{p}$.

**Varianz**: Für $X \thicksim \text{G}(r, p)$ ist $\V(X) = \dfrac{1-p}{p^2}$.

## Stetige Verteilungen

### (stetige) Gleichverteilung

**Faltung / Addition**: TODO

**Erwartungswert**: TODO

**Varianz**: TODO

### Poisson-Prozess (?)

**Faltung / Addition**: TODO

**Erwartungswert**: TODO

**Varianz**: TODO

### Erlang-Verteilung

Die Erlang-Verteilung $\text{E}(n, \lambda)$ hat die Parameter $n$ und $\lambda (n \in \N, \lambda > 0)$.

Die Erlang-Verteilung ist ein Spezialfall der [Gamma-Verteilung](#Gamma-Verteilung): $\text{E}(n, \lambda) = \Gamma(n, \lambda)$
(die Gamma-Verteilung akzeptiert mehr als nur $\N$ für $n$).

Die Verteilungsfunktion und die Dichte sind wie folgt definiert:

$$F_n(t) = \begin{cases}
  1 - \displaystyle{\sum_{k=0}^{n-1}} e^{-\lambda t} \dfrac{(\lambda t)^k}{k!} &,\\; t \ge 0 \\\\
  0                                                                            &,\\; t \lt 0
\end{cases}$$

$$f_X(t) = \begin{cases}
F'_n(t) = e^{-\lambda t} \dfrac{\lambda^n t^{n-1}}{(n-1)!} &,\\; t \ge 0 \\\\
0                                                          &,\\; t \lt 0
\end{cases}$$

> Man schreibt kurz $X \thicksim \text{E}(n, \lambda)$.

TODO: Graph für Erlang-Verteilung mit verschiedenen n's wie auf Folie 125 (9-4; gnuplot)

**Faltung / Addition**: TODO

**Erwartungswert**: TODO

**Varianz**: TODO

### Exponential-Verteilung

Die Exponentialverteilung $\text{Exp}(\lambda)$ hat den Parameter $\lambda > 0$. Sie ist ein Spezialfall
der Erlang-Verteilung: $\text{Exp}(\lambda) = \text{E}(1, \lambda)$.

Die Dichte und die Verteilungsfunktion sind wie folgt definiert:

$$f_X(t) = \begin{cases}
\lambda e^{-\lambda t} &,\\; t \ge 0 \\\\
0                      &,\\; t \lt 0
\end{cases}$$

$$F(t) = 1 - e^{-\lambda t},\\; t \gt 0$$

> Man schreibt kurz $X \thicksim \text{Exp}(\lambda)$.

TODO: Graph für Exponentialverteilung (f, F) wie auf Folie 126 (9-5; gnuplot)

**Faltung / Addition**: Seien $X \thicksim \text{Exp}(\lambda)$ und $Y \thicksim \text{Exp}(\lambda)$, dann ist $X + Y \thicksim \Gamma(2, \lambda)$

**Erwartungswert**: Für $X \thicksim \text{Exp}(\lambda)$ ist $\E(X) = \dfrac{1}{\lambda}$.

**Varianz**: Für $X \thicksim $ ist $\V(X) = \dfrac{1}{\lambda^2}$.

### Gamma-Verteilung

Die Funktion $\Gamma: (0, \infty) \to \R$

$$t \mapsto \Gamma(t) := \int_{0}^{\infty} x^{t-1} e^{-x} dx$$

heißt Gamma-Funktion und ist eine Erweiterung der Fakultät auf die positiven reelen Zahlen ($\Gamma(n+1) = n!$).

Die Gamma-Verteilung $\Gamma(\alpha, \beta)$ hat die Parameter $\alpha$ und $\beta$ mit $\alpha, \beta \gt 0$.

Für $\alpha \in \N$ gilt $\text{E}(n, \lambda) = \Gamma(n, \lambda)$, also ist die Erlang-Verteilung ein Spezialfall der Gamma-Verteilung.

Die Dichte ist wie folgt definiert:

$$f(t) = \dfrac{\beta^{\alpha}}{\Gamma(\alpha)} t^{\alpha - 1} e^{-\beta t},\\; t \ge 0$$

> Man schreibt kurz $X \thicksim \Gamma(\alpha, \beta)$

TODO: Graph für Gamma-Verteilung mit verschiedenen Werten für $\beta$ wie auf Folie 128 (9-7; gnuplot)

**Faltung / Addition**: Seien $X \thicksim \Gamma(\mu, \beta)$ und $Y \thicksim \Gamma(\rho, \beta)$, dann ist $X + Y \thicksim \Gamma(\mu + \rho, \beta)$

**Erwartungswert**: Für $X \thicksim \Gamma(\alpha, \beta)$ ist $\E(X) = \dfrac{\alpha}{\beta}$.

**Varianz**: Für $X \thicksim $ ist $\V(X) = \dfrac{\alpha}{\beta^2}$.

### Weibull-Verteilung

Die Weibull-Verteilung $\text{W}(\lambda, \alpha)$ hat die Parameter $\alpha > 0$ und $\lambda > 0$

> Falls $Y \thicksim \text{Exp}(\lambda)$, so gilt $X := Y^{1/\alpha} \thicksim \text{W}(\lambda, \alpha)$.

Die Dichte und die Verteilungsfunktion sind wie folgt definiert:

$$f(t) = \lambda \alpha t^{\alpha-1} e^{-\lambda t^{\alpha}},\\; t \gt 0$$

$$F(t) = 1 - e^{-\lambda t^{\alpha}},\\; t \gt 0$$

> Man schreibt kurz $X \thicksim \text{W}(\lambda, \alpha)$.

TODO: Graph mit Weibull-Verteilung für $\lambda = 1$ und verschiedene $\alpha$'s wie auf Folie 130 (9-9; gnuplot)

### Normalverteilung

TODO

**Faltung / Addition**: Seien $X \thicksim \text{N}(\mu, \sigma^2)$ und $Y \thicksim \text{N}(\nu, \tau^2)$, dann ist $X + Y \thicksim \text{No}(\mu + \nu, \sigma^2 + \tau^2)$

**Erwartungswert**: Für $X \thicksim \text{N}(\mu, \sigma^2)$ ist $\E(X) = \mu$.

**Varianz**: Für $X \thicksim $ ist $\V(X) = \sigma^2$.

### Lognormalverteilung

TODO

**Faltung / Addition**: TODO

**Erwartungswert**: Für $X \thicksim \text{LN}(\mu, \sigma^2)$ ist $\E(X) = \exp(\mu + \tfrac{\sigma^2}{2})$.

**Varianz**: Für $X \thicksim $ ist $\V(X) = \exp(2\mu + \sigma^2 \cdot (e^{\sigma^2} - 1))$.
