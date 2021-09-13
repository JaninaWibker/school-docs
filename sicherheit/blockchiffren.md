# Blockchiffren

Seien $E, D: {\lbrace 0, 1 \rbrace}^k \times {\lbrace 0, 1 \rbrace}^l \mapsto {\lbrace 0, 1 \rbrace}^l$ und
$M = M_1 \Vert M_2 \Vert \dots \Vert M_n$ mit $\vert M_i \vert = l$

## ECB - Electric codebook mode

$C := C_1 \Vert \dots \Vert C_n$ mit $C_i = E(K, M_i)$

$M := M_1 \Vert \dots \Vert M_n$ mit $M_i = D(K, C_i)$

## CBC - Cipher block chaining mode

Setze $C_0 := \text{IV}$<br />
Setze $C_i := E(K, M_i \oplus C_{i-1})$

Somit wäre dann $M_i := D(K, C_i) \oplus C_{i-1}$

> Entweder wird $\text{IV}$ mit übertragen oder es handelt sich um eine bekannte Konstante

## CTR - Counter mode

Setze $C_0 := \text{IV}$<br />
Setze $C_i := E(K, IV + i) \oplus M_i$

Somit wäre dann $M_i := E(K, IV + i) \oplus C_i$

> $D$ wird garnicht benötigt und $M_i$ fließt nie in $E$ mit ein.

