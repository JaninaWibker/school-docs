# Hashfunktionen

## PRF - Pseudorandom Function

Sei $\text{PRF}: {\lbrace 0, 1 \rbrace}^k \times {\lbrace 0, 1 \rbrace}^k \mapsto {\lbrace 0, 1 \rbrace}^k$ eine über $k \in \N$ parametrisierte Funktion.
$\text{PRF}$ heißt pseudorandom function, falls für jeden PPT-Algorithmus $A$ die Funktion

$\text{Adv}^\text{prf}_{\text{PRF}, A}(k) := \P(A^{\text{PRF}(K, \cdot)}(1^k) = 1) - \P(A^{R(\cdot)}(1^k) = 1)$

vernachlässigbar ist, wobei $R: {\lbrace 0, 1 \rbrace}^k \mapsto {\lbrace 0, 1 \rbrace}^k$ eine echte zufällige Funktion ist.


## Einwegfunktion - Pre-image Resistance

Eine über $k$ parametrisierte Funktion $H$ ist eine **Einwegfunktion** bzgl. der Urbildverteilung ${\lbrace \chi_k \rbrace}_k$, wenn jeder PPT-Algorithmus nur mit höchstens vernachlässigbarer Wahrscheinlichkeit ein Urbild eines gegebenen, aus $\chi_k$ gezogenen Bildes finden kann:

$\forall \text{ PPT-Algorithmen } A : \text{Adv}^{\text{ow}}_{H, A}(k) := \P(y \leftarrow A(1^k, H(x)) : H(x) = H(y)) < \text{negl}(k)$

wobei $x \leftarrow \chi_k$ gewählt wurde.


## Kollisionsresistenz - Collisions Resistance

Eine über $k$ parametrisierte Funktion $H$ ist **kollisionsresistent**, wenn jeder PPT-Algorithmus nur mit höchstens vernachlässigbarer Wahrscheinlichkeit eine Kollision findet:

$\forall \text{ PPT-Algorithmen } A : \text{Adv}^{\text{cr}}_{H, A}(k) := \P((x, y) \leftarrow A(1^k) : x \ne y \wedge H_k(x) = H_k(y)) < \text{negl}(k)$

> Kollisionsresistenz $\implies$ Einwegeigenschaft


## Merkle-Damgård-Konstruktion für Hashfunktionen

Gegeben eine PRF $F: {\lbrace 0, 1 \rbrace}^{2k} \mapsto {\lbrace 0, 1 \rbrace}^{k}$, konstruire für eine Nachricht $M$, die man in $M_1, \dots, M_n$ blöcke aufteilen kann (mit $0$-padding für den letzten Block falls nötig), folgend den Hash:

```
     M_1   M_2           M_n     M, |M|, ...
      |     |             |          |
      v     v             v          v
IV -> F --> F --> ... --> F  -> finalization -> Hash
```

> Was dieser finalization-Schritt genau tut ist Implementierungsabhängig, er muss aber auf jedenfall die Länge der ursprünglichen Nachricht in irgendeiner Form beinhalten, da man sonst leicht Kollisionen finden kann.

Merkle-Damgård selber ist keine PRF, da man ausgehend von einem Nachrichten-Hash-Paar sich weitere Nachrichten-Hash-Paare durch *Length Extension* generieren kann, was nicht zu PRFs passt bei denen Eingabe und Ausgabe komplett unabhängig sein sollen.

