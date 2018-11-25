# Matrix inverse JavaScript implementation

## Schritte

Als Wiederholung, dies sind die Schritte, welche man braucht zur Berechnung einer inversen Matrix:
- Matrix of Minors
- Matrix of Cofactors
- Adjunkte
- 1/Determinante

## Implementation

Die Implementation ist in JavaScript und nutzt Arrays, wobei diese zweifach *genested* sind. Eine 2x2 Matrix würde damit so definiert sein:

```js
const M = [
  [a, b],
  [c, d] 
]
```

### Utility functions

```js
// gibt die Größe einer Matrix zurück inform eines Arrays mit 2 Elementen (#Spalten, #Zeilen)
const size = (matrix) => [matrix[0].length, matrix.length]
// erstellt eine Nullmatrix mit Größe (i, j)
const zero_matrix = ([i, j]) => Array.from(Array(i).keys())​.map(() => Array.from(Array(j).keys()).map(() => 0))
// transponiert eine gegebene Matrix
const transpose = (matrix) => zero_matrix(size(matrix).reverse())​.map((line, i) => line.map((element, j) => matrix[j][i]))
// Minor berechnen für eine gegebene Matrix und die Indizes (i, j)
const minor = (matrix, [ri, rj]) => matrix
  .map((line, i) => ri === i ? undefined : line
    .map((element, j) => rj === j ? undefined : element)
    .filter(element => element !== undefined)
  ).filter(line => line !== undefined)
// Determinante für eine Matrix berechnen
const determinant = (matrix) => {
  console.log(matrix)
  if(size(matrix)[0] === 1) return matrix[0][0]

  return matrix[0]
    .map((element, j) => element * determinant(minor(matrix,[0, j])))
    .map(arr => (console.log(arr), arr))
    .reduce((acc, curr, i) => i % 2 === 0 ? acc - curr : acc + curr)
}
```

### Matrix of Minors

```js
const minors = (matrix) =>​ matrix.map((line, i) => line.map((element, j) =>​ determinant(minor(matrix, [i, j]))​))
```

### Matrix of Cofactors

```js
const cofactors = (matrix) =>​ matrix.map((line, i) => line.map((element, j) =>​ (i + j) % 2 === 0 ? element : -element​))
```

### Adjunkte

```js
const adjugate = (matrix) =>​ transpose(cofactors(minors(matrix)))
```

### Inverse Matrix

```js
const inverse_matrix = (matrix) => {

  // Determinante zwischenspeichern
  const det = determinant(matrix)

  // Adjunkte berechnen und Matrix mit 1/det multiplizieren
  return adjugate(matrix)
    .map((line, i) => line.map((element, j) => element * (1/det)))
}
```

> [Codepen](https://codepen.io/jannikwibker/pen/yQbygE)