# Halbordnung

Eine **Halbordnung**, auch Partialordnung, Teilordnung oder partielle Ordnung genannt, ist eine *reflexive*, *antisymmetrische* und *transitive* Relation. Es gilt also:

$$\begin{alignedat}{2}
&x \le x \qquad &\text{(Reflexivität)}\\\\
&x \le y \wedge y \le x \implies x = y \qquad &\text{(Antisymmetrie)}\\\\
&x \le y \wedge y \le z \implies x \le y  \qquad &\text{(Transitivität)}
\end{alignedat}$$

für alle $x, y, z \in M$.

Wie man sehen kann ähnelt dies sehr einer Äquivalenzrelation, der einzige Unterschied der existiert ist, dass die Relation *antisymmetrisch* anstatt *symmetrisch* sein muss. Während man bei Äquivalenzrelationen gerne das “=”-Zeichen verwendet, verwendet man bei Halbordnungen gerne “$\le$” oder “$\gt$”, da diese, ähnlich wie bei Äquivalenzrelationen, sozusagen die einfachste / elementarste dieser Relationen sind.

## Hassediagramme

Halbordnungen gibt man oft als **Hassediagramm** an. Ein *Hassediagramm* $H_R$ ist ein gerichteter Graph, wobei zunächst alle in Relation zueinander stehenden Elemente eine Kante besitzen, aber die Kanten ausgeschlossen werden, welche durch Transitivität oder durch Reflexivität entstanden sind. Da eine Halbordnung reflexiv ist steht jedes Element mit sich selbst in Relation, man kann dies also als eine unnötige Eigenschaft zum visualisieren sehen und lässt sie deshalb weg. Genauso mit der Transitivität; jeder Knoten der auf dem Weg von einem bestimmten Knoten aus liegt steht mit ihm in Relation.

![Graph mit allen Kanten](../../assets/gbi/halbordnung-graph-full.svg)
> Graph mit allen Kanten der Relation

![Graph ohne transitive Kanten](../../assets/gbi/halbordnung-graph-no-transitive.svg)
> Graph mit allen Kanten der Relation, ausgeschlossen die die durch die Transitivität entstanden sind

![Graph ohne transitive und reflexive Kanten](../../assets/gbi/halbordnung-graph-hasse-diagramm.svg)
> Graph mit allen Kanten der Relation, ausgeschlossen die die durch die Transitivität oder die Reflexivität entstanden sind; Hassediagramm der Relation

Wie man am Hassediagramm leicht erkennen kann gibt es eine Art "Ordnung" für die Elemente, jedes Element hat einen Nachfolger und es gibt ein größtes und ein kleinstes Element, dies ist nicht unbedingt eine Eigenschaft die jede Halbordnung hat (bspw. haben die natürlichen Zahlen kein größtes Element, da man immer einen Nachfolger finden kann) aber sind nennenswert.

> Hassediagramme sind gerichtete azyklische Graphen

## Extremelemente

Es sei $(M, \sqsubseteq)$ eine halbgeordnete Menge und $T$ eine beliebige Teilmenge von $M$.

Eine Element $x \in T$ heißt *minimales Element*, wenn es kein $y \in T$ gibt mit $y \sqsubseteq x$ und $y \ne x$.<br />
Ein Element $x \in T$ heißt *maximales Element*, wenn es kein $y \in T$ gibt mit $y \sqsupseteq x$ (bzw. $x \sqsubseteq y$) und $y \ne x$.

Ein Element $x \in T$ heißt *größtes Element* von $T$, wenn für alle $y \in T$ gilt: $y \sqsupseteq x$ (bzw. $x \sqsubseteq y$).<br />
Ein Element $x \in T$ heißt *kleinstes Element* von $T$, wenn für alle $y \in T$ gilt: $x \sqsubseteq y$

Eine Teilmenge $T$ kann mehrere mimimale (bzw. maximale) Elemente haben, aber nur ein kleinstes (bzw. größtes). Als Beispiel kann man $T \subseteq 2^{\lbrace a,b,c \rbrace}$ betrachten:

$T$ besitzt die minimalen Elemente $\lbrace a \rbrace$, $\lbrace b \rbrace$, $\lbrace c \rbrace$ und das größte Element $\lbrace a,b,c \rbrace$.

Ein Element $x \in M$ heißt *obere Schranke* von $T$, wenn für alle $y \in T$ gilt: $y \sqsubseteq x$, bzw. *untere Schranke* von $T$, wenn für alle $y \in T$ gilt: $y \sqsupseteq x$ (bzw. $x \sqsubseteq y$).

Besitzt die Menge der oberen Schranken einer Teilmenge $T$ ein kleinstes Element, so heißt dies das *Supremum* von $T$ (geschrieben: $\sqcup T$, $\text{sup}(T)$), ebenso wird das größte Element der unteren Schranken *Infimum* genannt (geschrieben: $\sqcap T$, $\text{inf}(T)$.

## Vollständige Halbordnungen

Wenn man eine (abzählbare) unendliche Folge $(x_0, x_1, \dots )$ von Elementen einer Halbordnung hat wofür die Eigenschaft $\forall i \in \N_0: x_i \sqsubseteq x_{i+1}$ gilt nennt man dies eine *aufsteigende Kette*.

Wenn eine Halbordnung ein kleinstes Element hat und jede aufsteigende Kette ein Supremum besitzt nennt man diese Halbordnung *vollständig*, dabei wird das kleinste Element gerne $\bot$ geschrieben. Eine Aufsteigende Kette hat die Eigenschaft $x_0 \sqsubseteq x_1 \sqsubseteq \dots$, also kann man auch theoretisch $\bigsqcup_i x_i$ schreiben um das Supremum zu beschreiben.

**Beispiel 1**: $(2^{M'}, \subseteq)$

Kleinstes Element: $\varnothing$<br />
Supremum einer aufsteigenden Kette $T_0 \subseteq T_1 \subseteq \dots\\ $: $\bigsqcup_i T_i = \bigcup T_i$<br />
$\implies$ vollständige Halbordnung

**Beispiel 2**: $(\N_0, \le)$

Unbeschränkt wachsende Folgen wie die natürlichen Zahlen haben kein Supremum, daher folgt **keine** vollständige Halbordnung.

Hätte man eine Element, welches den ganzen natürlichen Zahlen in der Relation übergeordnet ist, hätte man wieder ein Supremum wodurch man dann doch eine vollständige Halbordnung hätte:

$(\N_0 \cup \lbrace u \rbrace, \le)$ mit $x \sqsubseteq y \iff (x,y \in \N_0 \wedge x \le y) \vee (y = u)$

Eine Abbildung $f: M \rightarrow M$ heißt *monoton*, wenn f+ür alle $x,y \in M$ gilt: $x \sqsubseteq y \implies f(x) \sqsubseteq f(y)$, sie also die Art Reihenfolge nicht verändert. Ein einfaches Beispiel dafür sind Funktionen wie z.B. $f(x) = 2x$ oder $f(x) = x + 3$ für $(\N_0, \le)$.

Eine Abbildung $f: M \rightarrow M$ auf einer vollständigen Halbordnung heißt *stetig*, wenn für jede aufsteigende Kette $x_0 \sqsubseteq x_1 \sqsubseteq \dots$ gilt: $f(\bigsqcup_i x_i) = \bigsqcup_i f(x_i)$.

