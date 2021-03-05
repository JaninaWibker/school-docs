# Floating point numbers with IEEE-754

IEEE-754 specifies how floating point numbers are expressed in binary.

Multiple precisions are defined:
- 32 bit floating point values (floats)
- 64 bit floating point values (doubles)
- and some more

The differences between the formats are just a few constants (for width of certain fields in the binary representation, ...)

Only 32 bit will be discussed but everything applies to 64 bit or other formats as well with a few constants changed accordingly.

![binary representation of 32 bit floating point number](../assets/lti/floating-point-numbers.svg)

A floating point number consists of the following:
- A sign bit $s$ (bit 31; MSB)
- An exponent $E$ (bit 23 to 30)
- A mantissa $M$ (bit 0 to 22) 

The general idea is to express a number $x$ as the following $x = (-1)^s \cdot m * 2^e$

Basically all components for this representation of the number $x$ already exist in the binary representation but some modifications are made to them:

The exponent $e$ is offset using a bias (127 in the case of 32 bit): $E - 127$ unless $E=0$ or $E=127$.
If $E=0$ then the denormalized form is used and $e$ is set to $126$.
$E=127$ is used to represent special values such as infinity.

If the denormalized form is not used (most cases) then $m = 1.M$ (this is basically like calculating $1 + M^{-23}$).
If the denormalized form is used then $m = 0.M$ instead.

> The denormalized form makes it easier to represent numbers close to zero.

The special values ($E=127$) are the following:

| Mantissa | Value                                                   |
| -------- | ------------------------------------------------------- |
|     `0`  | Infinity (can be positive or negative depending on $s$) |
| not `0`  | NaN (Not a Number)                                      |

A zero can be both positive and negative depending on $s$, it is expressed by setting $E=0$ and $M=0$.

