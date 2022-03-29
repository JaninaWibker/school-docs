# Compiler

## Indizmengen, First und Follow

Für Top Down Parser sind **Indizmengen** wichtig.
Dafür wiederrum sind die **First-** und **Followmengen** wichtig:

$\text{First}_k(\chi)$ enthält alle Präfixe der Länge $k$ von $\chi\\#\\#\dots$, wobei $\\# \in \Sigma$ das Ende der Terminalfolge kennzeichnet und ansonsten nicht in der Grammatik auftaucht (wiederholtes EOF Token).

$\text{First}_k(\chi) = \lbrace \beta \\;\vert\\; \exists \tau \in \Sigma^{*}: \chi \\;{\Rightarrow}^{*}\\; \tau \wedge \beta = k : \tau \rbrace$

Meistens interessiert nur $k=1$, was dann auch nur $\text{First}(\chi)$ geschrieben wird.

$\text{Follow}_k(\chi)$ enthält alle Wörter der Länge $k$, die **nach** $\chi$ in einer Ableitung kommen können.

$\text{Follow}_k(\chi) = \lbrace \beta \\;\vert\\; \exists \alpha, \omega \in (V \cup \Sigma)^{*} \text{ mit } S \\;{\Rightarrow}^{*}\\; \alpha\chi\omega \wedge \beta \in \text{First}_k(\omega) \rbrace$

Auch hier interessiert einem vorallem $k=1$, was man dann gerne $\text{Follow}(\chi)$ nennt.

Die Indizmenge von $A \to \alpha$ ist mit $k$ token lookahead genau $\text{First}_k(\alpha\text{Follow}_k(A))$.
Hierbei ist das $\text{Follow}_k$ nur wichtig, falls $A$ weniger als $k$ tokens produzieren kann.

## SLL

Eine (kontextfreie) Grammatik ist genau dann eine **SLL(k)**-Grammatik, wenn für alle Paare von Produktionen $A \to \alpha \\;\vert\\; \beta, \alpha \ne \beta$ gilt:

$$\text{First}_k(\alpha\text{Follow}_k(A)) \cap \text{First}_k(\beta\text{Follow}_k(A)) = \emptyset$$

Das bedeutet: Man kann mit $\le k$ tokens erkennen, ob es sich um die Ableitung $A \to \alpha$ oder $A \to \beta$ handlet.

Spezialfall $k=1, \alpha \not{\Rightarrow}^{*} \epsilon, \beta \not{\Rightarrow}^{*} \epsilon$

$$\text{SLL} \iff \text{First}(\alpha) \cap \text{First}(\beta) = \emptyset$$

Spezialfall $k=1, \alpha\\; {\Rightarrow}^{*} \epsilon, \beta \not{\Rightarrow}^{*} \epsilon$

$$\begin{aligned}
\text{SLL} \iff&   \text{First}(\alpha) \cap \text{First}(\beta) = \emptyset \\\\
           \wedge&\\; \text{Follow}(A)     \cap \text{First}(\beta) = \emptyset
\end{aligned}$$

## Linksfaktorisierung

Grammatik mit Produktionen $X \to \gamma\alpha \\;\vert\\; \gamma\beta$ ist nicht SLL(k), wenn $\vert \omega \vert$ unbeschränkt für $\gamma \\;{\Rightarrow}^{*}\\; \omega$.

Die Lösung ist es das Parsen vom Teil nach $\gamma$ auszulagern und somit die Entscheidung welche Produktion anwendung findet zu verschieben:

$$\begin{aligned}
X  \to&\\; \gamma X' \\\\
X' \to&\\; \alpha \\;\vert\\; \beta
\end{aligned}$$


## Typische Grammatiken

### Lambdakalkül

```
L    -> Abs              # egal
Abs  -> λid. Abs | App   # { λ, (, id }
App  -> App Atom | Atom  # { (, id }     # is this rule maybe problematic?
Atom -> (L)      | Var   # { (, id }
Var  -> id               # { id }
```

### Prolog

```
Fact      -> Term .                          # { atom, number, variable }
Term      -> atom Term' | number | variable  # { atom, number, variable }
Term'     -> ε | ( TermList )                # { ., ( }
TermList  -> Term TermList'                  # { atom, number, variable }
TermList' -> ε | , Term TermList'            # { ), , }
```

### Prädikatenlogik


```
Formula   -> quantor var . Formula | var ( Termlist )  # { # }
Termlist  -> Term Termlist'                            # { ) }
Termlist' -> ε   | , Termlist                          # { ,, ) }
Term      -> var | int                                 # { var, int }
```

Diese Grammatik ist SLL(1)

### Simple mathematische Ausdrücke

```
Expr     -> Term ExprList      # egal
ExprList -> + Term ExprList    # { + }
          | - Term ExprList    # { - }
          | ε                  # { ), # }
Term     -> * Factor TermList  # { * }
          | / Factor TermList  # { / }
          | ε                  # { +, -, ), # }
Factor   -> id                 # { id }
          | ( E )              # { ( }
```

Diese Grammatik ist SLL(1).
