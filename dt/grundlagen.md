# Grundlagen

## Minterme

Minterme sind alle Werte für die eine Funktion $f$ eins ergibt.
Hierbei interpretiert man gerne mal die Inputs als Binärstellen und gibt dann in Dezimal an für welche Eingaben eine eins raus kommt.

**Beispiel**: $f(c, b, a) = MINt(0, 1, 4, 7)$

## Maxterme

Genau wie Minterme nur mit null anstatt eins.

**Beispiel**: $f(c, b, a) = MAXt(2, 3, 5, 6)$

## DNF - Disjunktive Normalform

Die Disjunktive Normalform besteht aus Verundungen welche darauf Verodert wurden:

$K_0 \wedge K_1 \wedge \dots \wedge K_k$ wobei $K_i = x_1 \vee x_2 \vee \dots \vee x_j$

In jeder Verundung muss jede Variable vorkommen.

**Beispiel**: $abc \vee \overline{a}b\overline{c} \vee \overline{a}\overline{b}\overline{c}$

## KNF - Konjunktive Normalform

Die Konjunktive Normalform besteht aus Veroderungen welche darauf Verundet wurden:

$D_0 \vee D_1 \vee \dots \vee D_k$ wobei $D_i = x_1 \wedge x_2 \wedge \dots \wedge x_j$

In jeder Verundung muss jede Variable vorkommen.


## Disjunktive Minimalform

Die Disjunktive Minimalform ist ähnlich wie die DNF mit dem Unterschied, dass sie minimal ist.
Es müssen nichtmehr alle Variablen in jedem Term vorkommen, womit sich einige Terme kürzen lassen.
Für das kürzen gibt es mehrere Vorgehensweisen.

**Beispiel**: $ab \vee \overline{c}$

## Konjunktive Minimalform

Die Konjunktive Minimalform ist ähnlich wie die KNF mit dem Unterschied, dass sie minimal ist.
Es müssen nichtmehr alle Variablen in jedem Term vorkommen, womit sich einige Terme kürzen lassen.

**Beispiel**: $a \wedge (b \vee \overline{c})$

## Primimplika(n)te(n)

> Implikant gehört zu Disjunktiv<br />
> Implikat gehört zu Konjunktiv

Ein Implika(n)t $p$ ist **Primimplika(n)t** einer Funktion $f$, falls es keinen Implika(n)ten $q \ne p$ gibt, der von $p$ impliziert wird, also:

$$\forall q: q \ne p \iff \neg(p \rightarrow q)$$

## Entbehrliche Primimplika(n)te(n)

Ein Primimplikant ist *entbehrlich*, wenn jeder von ihm überdeckte Minterm der Funktion von mindestens einem Kernprimimplikanten der Funktion überdeckt wird.

> Es gibt also Kernprimimplikanten die den Job des entbehrlichen Primimplikanten komplett übernehmen können.

Genau gleich für Implikate, nur das es hierbei um Maxterme und Kernimplikate geht.

