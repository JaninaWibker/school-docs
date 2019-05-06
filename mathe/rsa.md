# RSA

**RSA** ist ein *asymmetrischer* Verschlüsselungsalgorithmus.   >  **Asymmetrisch** bedeutet, dass es 2 Schlüssel gibt und man aus dem einen nicht in annehmbarer Zeit den anderen berechnen kann.

**RSA** benutzt einen *private key* (meist $e$) und einen *public key* (meist $d$), welche von ihren Eigenschaften und Fähigkeiten her ähnlich sind. Wenn $T$ mit $e$ verschlüsselt wird, kann dies nur mit $d$ entschlüsselt werden. Wenn $T$ mit $d$ verschlüsselt wird, kann dies nur mit $e$ entschlüsselt werden. Bei **RSA** wird einer dieser beiden Schlüssel als *public key* benutzt, diesen Key kann jeder haben. Falls jemand eine Nachricht an die Person mit dem *private key* schicken will und sicher gehen will, dass nur diese Person die Nachricht lesen kann verschlüsselt sie die Nachricht mit dem *public key*, da diese dann nurnoch mit dem *private key* entschlüsselt werden kann, nicht mit dem *public key*. Wenn der Besitzer des *private key*s verifizieren will, dass er wirklich der Besitzer ist verschlüsselt er etwas mit dem *private key* und andere können dies nun gegenprüfen indem sie dies mit dem *public key* entschlüsseln.  

Die Schlüssel lassen sich nicht voneinander herleiten, egal ob dazu noch Plaintext / Ciphertext vorhanden ist.

## Anwendung des RSAs

### Schritt 1

Als erstes muss man sich zwei sehr große Primzahlen generieren $p$ und $q$

### Schritt 2

Nun bildet man das RSA Modul $N$.<br />
$N = q\cdot p$

### Schritt 3

Jetzt muss man $\varphi(N)$ bestimmen, dies ist einfach da $p$ und $q$ Primzahlen sind.

$\varphi(N)= \varphi(p\cdot q) = \varphi(p) \cdot \varphi(q) = (p-1)\cdot (q-1)$

### Schritt 4

Anschließend bildet man den public key, hierfür wählt man eine Zahl $e$, für welche gelten muss, dass $1 < e < \varphi(N)$ und $ggT(e, \varphi(N)) = 1$

Den public key bilden nun $(e, N)$.

### Schritt 5

Zu letzt berechnen wir $d$ um den private key zu bilden.<br />
$d$ ist das Inverse zu $e$ im Modul $\varphi(N)$.<br />
$e \cdot d \text{ mod } \varphi(N) \equiv 1$<br />
Man berechnet nun $d$ mit dem erweiterten euklidischen Algorithmus von $e$ und $\varphi(N)$

Den private key bilden nun $(d, N)$.

## Entschlüsseln & verschlüsseln

Einen Text $T$ kann man nun mit $G=T^e\text{ mod N}$ verschlüsseln.

Um $G$ jetzt wieder zu entschlüsseln rechnet man $T=G^d\text{ mod N}$

>  **Beweis für die Entschlüsselung**:
>
>  $e\cdot d\text{ mod  } \varphi(N) \equiv 1$ $\implies$ $e\cdot d = r \cdot \varphi(N)+1$
>
> $ggT(a,m)=1 \implies a^{\varphi(N)} \text{ mod m} \equiv 1$ (Satz von Euler)
>
> $(T^e)^d \equiv T^{e \cdot d} \equiv T^{r \cdot \varphi(N)+1} \equiv T^{r \cdot \varphi(N)} \cdot T \equiv (T^{\varphi(N)})^r \cdot T \equiv 1^r \cdot T \equiv T \text{ mod N}$
