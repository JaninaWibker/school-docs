# Vektorräume

Eine Menge $V$ ist ein $\K$-Vektorraum, genau dann wenn:

**Vektoraddition**: Seien $u, v, w \in V$

&nbsp;&nbsp;&nbsp;&nbsp;**V1**: $u + (v + w) = (u + v) + w \text{ (Assoziativgesetz)}$

&nbsp;&nbsp;&nbsp;&nbsp;**V2**: $0_V \in \text{ mit } v + 0_V = 0_V + v = v \text{ (neutrales Element)}$

&nbsp;&nbsp;&nbsp;&nbsp;**V3**: $v^{-1} \text{ (oder nur } -v \text{ ) } \in V \text{ mit } v + v^{-1} = v^{-1} + v = 0_V\text{ (inverses Element)}$

&nbsp;&nbsp;&nbsp;&nbsp;**V4**: $v + u = u + v \text{ (Kommutativgesetz)}$

**Skalarmultiplikation**: Seien $\lambda, \mu \in \K, u, v \in V$

&nbsp;&nbsp;&nbsp;&nbsp;**S1**: $\lambda \cdot (u + v) = (\lambda \cdot u) + (\lambda \cdot v) \text{ (Distributivgesetz)}$

&nbsp;&nbsp;&nbsp;&nbsp;**S2**: $(\lambda + \mu) \cdot u = (\lambda \cdot u) + (\mu \cdot u)$

&nbsp;&nbsp;&nbsp;&nbsp;**S3**: $(\lambda \cdot \mu) \cdot u = a \cdot (\mu \cdot u)$

&nbsp;&nbsp;&nbsp;&nbsp;**S4**: $1 \in K: 1 \cdot u = v \text{ (neutrales Element)}$

> V1, V2, V3 sagen, dass $(V, +)$ eine Gruppe ist. Durch V4 kommt die Kommutativität hinzu, somit also eine abelsche Gruppe. Neutrales Element ist $0$ ($0_V$), auch Nullvektor genannt.

## Untervektorräume

Eine Teilmenge $U \subset V$ heißt **Untervektorraum** wenn gilt:

**U1**: $ 0 \in U$

**U2**: $ \forall x,y \in U: x + y \in U$

**U3**: $ \forall x \in U: \forall \lambda \in \K: \lambda x \in U$