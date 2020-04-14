# Quotientenräume, Faktorräume, ...

> Quotienten(vektor)räume sind das gleiche wie Faktorräume

Um zu verstehen, was ein Quotientenraum ist muss man zunächst wissen, was Translate sind.

## Translate

Sei $U$ ein UVR von $V$ und $x \in V$, dann ist $x + U := \lbrace x + u \\,\vert\\, u \in U \rbrace$ ein **Translat** von $U$ durch $x$. Translate von Unterräumen heißen auch **affine Teilräume**.

> Translate sind das gleiche wie Äquivalenzklassen.

## Quotientenräume

Seien $U$, $V$ wie bevor, dann ist $V / U$ ein Quotientenraum und wie folgt definiert: $\lbrace x + U \\,\vert\\, x \in V \lbrace$. $V / U$ ist die Menge aller Translate von $U$. Die Sprechweise hierfür lautet "$V$ modulo $U$"

> $V / U = \lbrace x + U \\,\vert\\, x \in V \rbrace = \lbrace x + u \\,\vert\\, u \in U, x \in V \rbrace$

> Die Elemente eines Quotientenräumes sind Äquivalenzklassen

![Translate Visualisierung](../assets/mathe/translate-visualisierung.svg)

## Rechnen mit Translaten und Quotientenräumen

Sei $V$ VR, $U$ $V$-UVR und $A, B \in V/U$:

$A + B := \lbrace a + b \\,\vert\\, a \in A, b \in B \rbrace$

Oder auch anders ausgedrückt:

Seien $x, y \in V$, $A = x + U$, $B = x + U$, dann ist:

$$\begin{alignedat}{3}
A + B &= \lbrace x + u_1 + y + u_2 \\,&\vert&\\, u_1, u_2 \in U \rbrace\\\\
      &= \lbrace x + y + u_1 + u_2 \\,&\vert&\\, u_1, u_2 \in U \rbrace\\\\
      &= \lbrace x + y + u         \\,&\vert&\\, u \in U \rbrace
\end{alignedat}$$

Sei $\lambda \in \K$, dann $$\lambda \cdot A := \begin{cases}
\lambda a \\,\vert\\, a \in A &\text{ if } \lambda \ne 0\\\\
U                             &\text{ if } \lambda  =  0
\end{cases}$$

bzw. $\lambda \cdot (x + U) = \lambda x + U$, es wird also der Faktor **nur** auf $x \in V$ angewandt, somit bleibt der Vektorraum bei einem Faktor von $0$ erhalten.


## Kanonische Projektionen

> Einem sollte das ganze halbwegs Bekannt vorkommen, es ist nähmlich genau das gleiche, was man mit Partitionen schon alles gemacht hat. Partitionen, Äquivalenzklassen, ... sind alles Konzepte die auch auf Vektorräume anwendbar sind!

$V/U$ ist eine Partition von $V$.

$\pi : V \to V/U, x \mapsto x + U$ ist eine surjektive lineare Abbildung. Wenn $W$ ein zu $U$ komplemtärer UVR ist, dann ist $\pi\vert_W : W \to V/U$ bijektiv

## V/W als Basis

Setze zur besseren Lesbarkeit $d(V, U) = \dim(V) - \dim(U)$ und $d(U) = \dim(U)$.

Sei $V$ VR, $U$ $V$-UVR. Die Basis von $U$ ist gegeben durch $\lbrace u_1, \dots, u_{d(U)} \rbrace$. Man ergänze diese Basis zu einer Basis von $V$: $\lbrace u_1, \dots, u_{d(U)}, w_1, \dots, w_{d(V, U)} \rbrace$.

$\lbrace w_1, \dots, w_{d(V, U)} \rbrace$ ist dann die Basis zu einem $U$ komplementären UVR. Des weiteren ist dann $\lbrace w_1 + U, \dots, w_{d(V, U)} + U\rbrace$ eine Basis von $V/U$.

## Linksnebenklasse

Sei $G$ eine Gruppe und $H$ eine Untergruppe. Eine **Linksnebenklasse** von $H$ ist eine Teilmenge der Form $g \cdot H \\,\vert\\, g \in G$

$g \cdot H := \lbrace g \cdot h \\,\vert\\, h \in H \rbrace$

> Es heißt *Links*nebenklasse, da man das $g$ von links mit $H$ verknüpft. Es gibt auch Rechtsnebenklassen.

Die Linksnebenklasssen sind *Partitionen* von $G$

Beispielsweise kann man $G = (\N_0, +)$ und $H = (2 \cdot \N_0, +)$ (also alle geraden Zahlen) nehmen hat nun die Partitionen $[0] = 0 + H$ und $[1] = 1 + H$.


$\\#g \cdot H = \vert g \cdot H \vert = \vert H \vert \iff m : H \to g \cdot H, h \mapsto g \cdot h$ wobei $m$ bijektiv ist:

- Surjektivität: folgt aus Definition
- Injektivität: $gh_1 = gh_2 \implies g^{-1}gh_1 = g^{-1}gh_2 \implies h_1 = h_2$

  $G / H := \lbrace g \cdot H \\,\vert\\, g \in G \rbrace$
