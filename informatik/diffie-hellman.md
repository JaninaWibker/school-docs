# Diffie Hellman

**Diffie Hellman** ist ein Weg ein gemeinsames Geheimnis zwischen 2 Parteien *sicher* auszutauschen. Diffie Hellman beruht auf ähnlichen mathematischen Eigenschaften wie der [RSA](../mathe/rsa.md). Diffie Hellman ist sicher, solange die geschickten Daten nicht manipuliert werden und eine (wo)man-in-the-middle attack durchgeführt wird. 



## Vorgehensweise

Man nimmt an, dass 2 Personen **Alice** und **Bob** einen gemeinsamen gleichen Schlüssel austauschen wollen ohne, dass ein Dritter diesen auch erhalten kann. Es gibt ein globales $g\:\vert\: 1 < g < p-1 $ und $p\:\vert\:\text{große Primzahl}$, welches vom Protokoll bzw. Von der verwendeten Anwendung definiert wurde. 

Alice und Bob wählen jeweils eine geheime Zahl, $a$ und $b$. 

$g^{a} \text{mod } p$ ($A$) wird von Alice berechnet und an Bob geschickt,

$g^{b} \text{mod } p$ ($B$) wird von Bob berechnet und an Alice geschickt. 



Daraufhin berechnet Alice mit $B$ das gemeinsame Geheimnis $B^a \text{mod } p$

Bob tut das gleiche mit $A$ und rechnet $A^b \text{mod } p$.

> Diese beiden errechneten Werte sind der gleiche. 



## Beispiel

$g = 7,\quad p = 5,\quad a = 3, \quad b=11$

$A = g^a \text{mod } p$

$B = g^b \text{mod } p$



$\text{geteiltes Geheimnis} = A^b \text{mod } p = B^a \text{mod } p$

