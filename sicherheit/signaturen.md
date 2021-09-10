# Signaturen

Das Ziel von Signaturen ist es, zu bestätigen, dass eine gewisse Nachricht valide ist in Hinsicht auf ihre Herkunft und des weiteren nicht unterwegs modifiziert wurde.

Dazu gibt es 2 grobe Ansätze: symmetrische Signaturen und asymmetrische Signaturen.


## Symmetrische Signaturen - MACs

> MAC := Message Authentication Code

Signieren: $\sigma \leftarrow \text{Sig}(K, M), M \in {\lbrace 0, 1 \rbrace}^{*}, \sigma \in {\lbrace 0, 1 \rbrace}^{k}$<br />
Verifizieren:$\text{Ver}(K, M, \sigma) = 1$ für alle $K, M$ und $\sigma \leftarrow \text{Sig}(K, M)$

Die Sicherheit eines Schemas wird durch [EUF-CMA](/sicherheit/euf-cma) bewiesen (symmetrische Variante).

Bei vielen Verfahren kann man nur eine feste Länge von bits bzw. kurze Bitstrings signieren, also was tut man wenn man längere Nachrichten hat?: **hash-then-sign**

Aus einer PRF und einer Hashfunktion kann man sich ein symmetrisches Signaturschema basteln:

Sei $\text{PRF}: {\lbrace 0, 1 \rbrace}^{k} \times {\lbrace 0, 1 \rbrace}^{k} \mapsto {\lbrace 0, 1 \rbrace}^{k}$ eine PRF und $H: {\lbrace 0, 1 \rbrace}^{*} \mapsto {\lbrace 0, 1 \rbrace}^{k}$ eine kollisionsresistente Hashfunktion.
Dann ist der durch $\text{Sig}(K, M) = \text{PRF}(K, H(M))$ gegebene MAC EUF-CMA-sicher.

**Konkrete Beispiele**: MD5, SHA-1, SHA-256 als Hashfunktion alle (halbwegs) unsicher.

### HMAC

> Beispiel eines sicheren Signaturverfahrens

$\text{Sig}(K, M) = H((K \oplus \text{opad}) \Vert H((K \oplus \text{ipad}) \Vert M )$<br />
$\text{Ver}(K, M, \sigma) = (\sigma \stackrel{?}{=} \text{Sig}(K, M))$

Hierbei sind $\text{opad}, \text{ipad} \in {\lbrace 0, 1 \rbrace}^k$ feste Konstanten.


## Asymmetrische Signaturen

Ein asymmetrisches Signaturschemata besteht aus $(\text{Gen}, \text{Sig}, \text{Ver})$.

$(\text{pk}, \text{sk}) \leftarrow \text{Gen}(1^k)$ wie bei public-key-Verschlüsselung.

Signieren von $M$: $\sigma \leftarrow \text{Sig}(\text{sk}, M)$

Verifizieren von $M, \sigma$: $\text{Ver}(\text{pk}, M, \sigma) \in \lbrace 0, 1 \rbrace$

Die Sicherheit eines Schemas wird durch [EUF-CMA](/sicherheit/euf-cma) bewiesen (asymmetrische Variante).

### RSA als Signaturschema

> **Warnung**: In dieser Form nicht sicher

$\text{Sig}(\text{sk}, M) = M^d \mod N$<br />
$\text{Ver}(\text{pk}, M, \sigma) = 1 :\iff M = \sigma^e \mod N$

> also genau wie zu erwarten eigentlich

Problematisch ist hierbei, dass $\text{Enc}$ deterministisch ist und die homomorphie von RSA.

Jede dieser beiden Eigenschaften sorgt dafür, dass RSA als Signaturschema nicht EUF-CMA sicher ist.

Man kann RSA reparieren durch padding: **(RSA-)PSS - Probabilistic Signature Scheme**

$\text{Sig}(\text{sk}, M) = (\text{pad}(M))^d \mod N$<br />
$\text{Ver}() = 1 :\iff \sigma^e \mod N$ gültiges $\text{pad}(M)$

Hierbei verwendet $\text{pad}(M)$ Salts, Konstanten und mehrmals eine Hashfunktion.

PSS ist EUF-CMA sicher und es ist sogar möglich ein festes kleines $e$ (bspw. 3) zu wählen was zu einer effizienten Verifikation führt.


### ElGamal Signaturen

Signaturverfahren über zyklische Gruppe $\G = \langle g \rangle$.

**Vorgehen**:
- $\text{Gen}(1^k)$: Ziehe ein $x$ zufällig und gebe als geheimen Schlüssel $\text{sk} = (\G, g, x)$ und als öffentlichen Schlüssel $\text{pk} = (\G, g, g^x)$ aus.
- $\text{Sig}(sk, M)$:
  - Wähle ein $e$ zufällig und setze $a := g^e$.
  - Berechne $b$ als Lösung von $a \cdot x + e \cdot b = M \mod \vert \G \vert$.
  - Die Signatur ist dann $\sigma = (a, b)$.
- $\text{Ver}(pk, M, \sigma = (a, b))$: Gebe 1 aus, wenn $(g^x)^a \cdot a^b = g^M$ ist, sonst gebe 0 aus.

> Man darf nie das selbe $e$ für verschiedene $M$ verwenden:<br />
> $(a = g^e, b, M)$ und $(a = g^{e}, b', M')$ bekannt mit:<br />
> $a \cdot x + e \cdot b  = M  \mod \vert \G \vert$<br />
> $a \cdot x + e \cdot b' = M' \mod \vert \G \vert$<br />
> Woraus dann folgt: $e = (M - M') / (b - b') \mod \vert \G \vert$ und damit $x$, bei zufälligem $e$ ist dies vernachlässigbar.

ElGamal-Signaturen sind wie RSA auch nicht EUF-CMA sicher, da man für unsinnige Nachrichten Signaturen generieren kann indem man von einer Signatur auf die Nachricht zurück geht.

Dies kann durch **hash-then-sign** mitigiert werden, da man dadurch um EUF-CMA zu brechen erst mal die Hashfunktion invertieren müsste.
Verwende also einfach $H(M)$ anstatt $M$ bei ElGamal-Signaturen, dies nennt sich dann **Digital Signature Algorithm** oder auch **DSA**.

