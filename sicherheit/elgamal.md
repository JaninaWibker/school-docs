# ElGamal

ElGamal ist ein Weg assymetrisch Nachrichten zu verschlüsseln und baut dafür sehr auf zyklischen Gruppen auf.
Genau wie RSA auch ist ElGamal aber homomorph.

**Definition**:

- zyklische Gruppe $\G = \langle g \rangle$
- $\text{pk} = (\G, g, g^x), \text{sk} = (\G, g, x)$ (mit $x$ zufällig gleichverteilt gewählt)
- $\text{Enc}(\text{pk}, M) = (g^y, g^{xy} \cdot M)$ (mit $y$ zufällig gleichverteilt gewählt)
- $\text{Dec}(\text{sk}, (Y, Z)) = Z / Y^x = (g^{xy} \cdot M) / (g^y)^x = M$<br />
  Hier muss man beachten, dass diese Division eigentlich nur eine Multiplikation mit dem Inversen ist

Beobachtung: Verschlüsselung ist probabilistisch, aber immernoch homomorph genau wie RSA:

$$\begin{alignedat}{1}
   &\quad \text{Enc}(\text{pk}, M) \cdot \text{Enc}(\text{pk}, M') \\\\
  =&\quad (g^{y}, g^{xy} \cdot M) \cdot (g^{y'}, g^{xy'} \cdot M') \\\\
  =&\quad (g^{y+y'}, g^{x(y+y')} \cdot M \cdot M') \\\\
  =&\quad \text{Enc}(\text{pk}, M \cdot M')
\end{alignedat}$$

> Es gibt Varianten von ElGamal, welche nicht homomorph sind

Gute Kandidaten für Gruppe $\G$ sind:
- (Echte) Untergruppen von $\Z_p^*$ (mit $p$ Prim)
- Allgemeiner: Untergruppen von $\F_q^*$ (mit $q$ Primpotenz)
- Effizienter: (Untergruppen von) elliptischer Kurve $E(\F_q)$

Realistische Gruppengröße:
- $\vert \G \vert \approx 2^{2048}$ für $\G \subset \Z_p^*, \F_q^*$
- $\vert \G \vert \approx 2^{200}$ für $\G \subseteq E(\F_q)$

**Beispielrechnung**:

Wähle $\G$ als Untergruppe von $\Z_{23}^{*}$ mit der Gruppenoperation Multiplikation modulo 23.
$\G$ sei hierbei die Untergruppe der Quadrate (es gilt $\vert \G \vert = 11$; Gruppenordnung).
Als Erzeuger von $\G$ wird das Element $g = 16$ gewählt.

1. Berechne für den geheimen Schlüssel $\text{sk} := 8$ den zugehörigen $\text{pk}$
2. Berechne das Chiffrat $C$ zur Nachricht $M := 13$ mithilfe von $\text{pk}$ aus (**1**) und dem Zufall $r = 5$
3. Es sei $C := (7, 6)$ ein Chiffrat, berechne $m := \text{Dec}(\text{sk}, C) \in Z_{23}^{*}$ mithilfe von $\text{sk} := 8$

**Lösung**:

1. Berechne $$\begin{alignedat}{2}
  &\quad g^x   &\mod 23 \\\\
 =&\quad 16^8  &\mod 23 \\\\
 =&\quad 256^4 &\mod 23 \\\\
 =&\quad 3^4   &\mod 23 \\\\
 =&\quad 81    &\mod 23 \\\\
 =&\quad 12    &\mod 23 \\\\
 \implies&\quad \text{pk} &= (\G, 16, 12)
\end{alignedat}$$
2. Berechne $$\begin{alignedat}{1}
 &\quad \text{Enc}(\text{pk}, M) \\\\
=&\quad \text{Enc}(\text{pk}, 13) \\\\
=&\quad (16^5 \mod 23, 12^5 \cdot 13 \mod 23) \\\\
=&\quad (16 \cdot 256^2 \mod 23, 12 \cdot 144^2 \cdot 13 \mod 23) \\\\
=&\quad (16 \cdot 3^2 \mod 23, 12 \cdot 6 \cdot 13 \mod 23) \\\\
=&\quad (6, 16)
\end{alignedat}$$
3. Berechne $$\begin{alignedat}{1}
 &\quad \text{Dec}(\text{sk}, (7, 6)) \\\\
=&\quad 6 / 7^x \\\\
=&\quad 6 / 7^8 \\\\
=&\quad 6 / 3^4 \\\\
=&\quad 6 / 12 \\\\
=&\quad 6 \cdot 12^{-1} (12 \cdot 2 \mod 23 = 1 \implies 12^{-1} = 2)\\\\
=&\quad 6 \cdot 2 = 12
\end{alignedat}$$

> Man darf hier nie wirlich dividieren (die Operation gibt es so garnicht in der Gruppe!), es handelt sich immer nur um die Multiplikation mit dem Inversen.

