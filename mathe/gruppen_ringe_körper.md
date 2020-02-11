# Gruppen, Ringe, Körper

Gruppen, Ringe, Körper, Vektorräume und Algebren sind alles verschiedene algebraische Systeme. Dabei haben meistens alle die Eigenschaften ihrer Vorgänger und einige zusätzliche.

> Mit "$+$", "$\cdot$", "$\circ$" sind Verknüpfungen über Mengen gemeint, sie haben folgenden Syntax:
>
> Verknüpfungen: $\circ: M \times M, (a, b) \to a \circ b$

# Gruppen

$(G, +)$

- Addition "$+$"
  - **assoziativ**: $\forall a,b,c \in G: (a+b)+c = a+(b+c)$
  - **neutrales Element**: $\exists 0 \in G\  \forall g \in G: g + 0 = g$ (auch oft $e$ genannt)
  - **inverses Element**: $\forall g \in G: g^{-1} + g = 0$

- **Abgeschlossenheit**: durch keine Operation darf man aus der Gruppe heraus kommen

## abelsche Gruppen

Abelsche Gruppen sind zusätzlich **kommutativ**:

$$\forall a,b \in G: a + b = b + a$$

## Ordnung von Gruppen und Elementen

$\text{Mächtigkeit } = \text{ Ordnung } = \text{ Kardinalität}$

Für endlich dimensionale Gruppen $G$ ist die $\text{ord}(G) = |G|$ die Anzahl der Elemente in $G$.

Falls ein Element $a \in G$ $n$-mal mit sich selbst verknüpft $1$ ergibt, ist das (kleinste) $n$ seine Ordnung:
$$a \in G: \text{ord}(a) = \text{min} \\{ a^n = 1 \ |\  n \in \N \\}$$
Falls es kein solches $n$ für $a$ gibt sagt man, dass $a$ unendliche Ordnung
$$\text{ord}(a) = \infty$$
hat.

Die Ordnung von $a$ ist die Ordnung der von $a$ erzeugten Untergruppe. Daraus folgt:
$$ \forall a \in G \text{ ord}(a) \in N \band \text{ ord}(a) | \text{ ord}(G) \iff G \text{ endliche Gruppe}$$

## Untergruppen

Eine Untergruppe $H$ ist eine Teilmenge von $G$ welche selbst wieder eine Gruppenstruktur hat.

**Satz von Lagrange**: Die Ordnung jeder Untergruppe $H$ einer endlichen Gruppe $G$ ist ein Teiler der Ordnung der Gruppe $G$. Ist speziell $|G|$ eine Primzahl, dann hat $G$ nur die (trivialen) Untergruppen $\\{ e \\}$ ($e$ neutrales Element) und $G$ selbst.

## Halbgruppen und Monoide

Eine **Halbgruppe** ist eine Menge mit einer Verknüpfung welche assoziativ ist.

Falls eine Halbgruppe ein **neutrales Element** besitzt nennt man sie auch **Monoid**. Somit ist ein **Monoid** eine Gruppe ohne die Existenz von inversen Elementen.

# Ringe

$(R, +, \cdot)$

- Addition "$+$" (wie bei Gruppe)
  - **assoziativ**: $\forall a,b,c \in G: (a+b)+c = a+(b+c)$
  - **neutrales Element**: $\exists 0 \in G\  \forall g \in G: g + 0 = g$
  - **inverses Element**: $\forall g \in G: g^{-1} + g = 0$
  - **kommutativ**: $\forall a,b \in G: a + b = b + a$

- Multiplikation "$\cdot$"
  - **assoziativ**: $\forall a,b,c \in R: (a \cdot b) \cdot c = a \cdot (b \cdot c)$
  - **neutrales Element**: $\exists 1 \in G\  \forall g \in G: g \cdot 1 = g$
  - braucht **kein inverses Element**, kann aber eins haben
  - **distributiv**: $\forall a,b,c \in R: a \cdot (b+c) = a \cdot b + a \cdot c$

- **Abgeschlossenheit**: durch keine Operation darf man aus dem Ring heraus kommen

$$(R, +, \cdot) \text{ Ring} \iff (R, +) \text{ abelsche Gruppe} \band (R, \cdot) \text{ Monoid}$$

## Unter- und Oberringe

Eine Teilmenge $U$ von $R$ heißt Unterring, wenn $U$ selbst wieder ein Ring ist:
$$U \subset R \band (U, +, \cdot) \implies (U, +, \cdot) \text{ Unterring von } (R, +, \cdot)$$


# Körper

$(K, +, \cdot)$

- Addition "$+$" (wie bei Gruppen und Ringen)
  - **assoziativ**: $\forall a,b,c \in K: (a+b)+c = a+(b+c)$
  - **neutrales Element**: $\exists 0 \in K\  \forall k \in K: k + 0 = g$
  - **inverses Element**: $\forall k \in K: k^{-1} + k = 0$
  - **kommutativ**: $\forall a,b \in K: a + b = b + a$

- Multiplikation "$\cdot$" (wie bei Ringen)
  - **assoziativ**: $\forall a,b,c \in K: (a \cdot b) \cdot c = a \cdot (b \cdot c)$
  - **neutrales Element**: $\exists 1 \in K\  \forall k \in K: k \cdot 1 = k$
  - **inverses Element** (**bis auf** $0$): $\forall k \in K \setminus \\{ 0 \\}: k \cdot k^{-1} = k^{-1} \cdot k = 1$
  - **distributiv**: $\forall a,b,c \in K: a \cdot (b+c) = a \cdot b + a \cdot c$

- **Abgeschlossenheit**: durch keine Operation darf man aus dem Körper heraus kommen

$$(K, +, \cdot) \text{ Körper} \iff$$

$$\begin{alignedat}{1}
        & (K, +) \text{ abelsche Gruppe}\\\\
\band\  & (K \setminus \\{ 0 \\}, \cdot) \text{ abelsche Gruppe}\\\\
\band\  & \text{ Distributivgesetze}
\end{alignedat}$$


# Beispiele

## Gruppen

- $(\Z, +)$, $(\Q, +)$, $(\R, +)$, $(\C, +)$ sind abelsche Gruppen
- $(\Q \setminus \\{ 0\\}, \cdot)$, $(\R \setminus \\{ 0\\}, \cdot)$, $(\C \setminus \\{ 0\\}, \cdot)$ sind abelsche Gruppen ($0$ wird ausgeschlossen, da sie kein inverses Element besitzt ($1/0$ ist undefiniert))
- $(\\{ f: M \to M \band f \text{ bijektiv} \\}, \circ)$ ist (die symmetrische-) Gruppe
- $(\\{ M\  |\  M \text{ invertierbar} \\}, \cdot)$ ist Gruppe (äquivalent zu bijektive Abbildungen sind mit Komposition Gruppe)
- $(\N, \cdot, 1)$ ist ein Monoid
- $(\N, :, 1)$ ist **kein** Monoid, nicht assoziativ
- $(\Z, +, 0)$ ist ein Monoid
- $(\Z, -, 0)$ ist **kein** Monoid
- $(\R^{n \times n}, \cdot, E_n)$ ist ein Monoid
- $(n\Z, +, 0)$ (Menge der Vielfache von $n \in \Z$) ist ein Monoid
- $(\Q_+, +, 0)$ ist ein Monoid

## Ringe

- $(\Z, +, \cdot)$, $(\Q, +, \cdot)$, $(\R, +, \cdot)$, $(\C, +, \cdot)$ sind Ring
- Restklassenringe
- Polynomringe
- quadratische Matrizen mit fixer Dimension

## Körper

- $(\Q, +, \cdot)$, $(\R, +, \cdot)$, $(\C, +, \cdot)$ sind alles Körper
- $(\Z / p\Z \ |\  p \text{ prim}, +, \cdot)$ ist Körper