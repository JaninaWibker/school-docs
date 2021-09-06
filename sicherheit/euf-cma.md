# EUF-CMA - Existential Unforgeability under Chosen Message Attacks

Bei EUF-CMA geht es darum, dass Signaturen nicht gefälscht werden können.
Hierzu gibt es die Unterscheidung zwischen symmetrischer EUF-CMA-Sicherheit und asymmetrischer EUF-CMA-Sicherheit.

Große Unterschiede gibt es zwischen den beiden nicht, nur dass einmal ein symmetrisches Verfahren und einmal ein asymmetrisches Verfahren verwendet wird.

## Symmetrisch

> MAC := Message Authentication Code, eine Signatur die mithilfe eines symmetrischen Schlüssels generiert wird.

Ein PPT-Angreifer kann trotz Signaturorakel, welches er polynomiell oft nutzen kann, keine Signaturen von frischen Nachrichten $M$ fälschen. Wenn das der Fall ist, ist ein MAC EUF-CMA sicher.

**Definition**:

Betrachte PPT-Algorithmus $A$ und Herausforderer $C$, welcher einen Schlüssel $K$ zufällig gleichverteilt gewählt hat.

- $A$ erhält Zugriff auf Signaturorakel $\text{SIG}(K, \cdot)$, an das $A$ polynomiell viele Nachrichten $M_i$ schicken darf und jeweils $\sigma_i = \text{SIG}(K, M_i)$ als Antwort erhält.
- $A$ gibt Nachrichten-Signatur-Paar $(M^{*}, \sigma^{*})$ aus, welches hoffentlich eine valide Fälschung ist.
- $A$ gewinnt, wenn $\sigma^{*}$ eine gültige Signatur für $M^{*}$ ist, also wenn $\text{VER}(K, M^{*}, \sigma^{*}) = 1$ ist und $M^{*}$ frisch ist ($\forall M_i : M_i \ne M^{*}$).

Ein MAC ($\text{SIG}$, $\text{VER}$) ist EUF-CMA-sicher, falls jeder PPT-Angreifer $A$ das Spiel (mit Sicherheitsparameter $k$) mit nur vernachlässigbarer Wahrscheinlichkeit gewinnt.

> Im Gegensatz zu IND-CPA müssen hierbei die Nachrichten frisch sein.

## Asymmetrisch

Das gleiche nochmal nur assymetrisch.

**Definition**:

Betrachte PPT-Algorithmus $A$ und Herausforderer $C$.

- $C$ generiert mit einem Generator-Algorithmus ein Schlüsselpaar $(\text{pk}, \text{sk}) \leftarrow \text{GEN}(1^k)$.
- $A$ erhält Zugriff auf ein Signaturorakel $\text{SIG}(\text{sk}, \cdot)$ sowie den entsprechenden öffentlichen Schlüssel $\text{pk}$.
- $A$ darf polynomiell viele Nachrichten $M_i$ an das Signaturorakel schicken und erhält $\sigma_i = \text{SIG}(\text{sk}, M_i)$
- $A$ gibt Nachrichten-Signatur-Paar $(M^{*}, \sigma^{*})$ aus, welches hoffentlich eine valide Fälschung ist.
- $A$ gewinnt, wenn $\sigma^{*}$ eine gültige Signatur füλ $M^{*}$ ist, also wenn $\text{VER}(\text{sk}, M^{*}) = 1$ ist und $M^{*}$ frisch ist ($\forall M_i : M_I \ne M^{*}$).

Ein assymetrisches Signaturverfahren ist EUF-CMA-sicher, wenn jeder beliebige PPT-Angreifer $A$ das Spiel (mit Sicherheitsparameter $k$) mit nur vernachlässigbarer Wahrscheinlichkeit gewinnt.

