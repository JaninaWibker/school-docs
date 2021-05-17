# Sortieren

## Insertion Sort

```c
proc insertion_sort(a: [Element, n]) {
  for i in [1, ..., n-1] {
    invariant a[0] <= ... <= a[i-1]
    // move a[i] to the right place
    e := a[i]

    // move previous elements one step to the right
    // until a fitting place for e has been found

    // a little optimization:
    // check if e < a[0] to see if you need to move
    // all elements

    if e < a[0] {
      for j := i; j >= 1; j-- { a[j] = a[j-1] }
      a[0] = e
    } else {
      for j := i; a[j] > e; j-- { a[j] = a[j-1] }
      a[j] = e
    }

  }
}
```

Die $i$-te Iteration braucht $\Theta(i)$ Zeit im worst case und $O(1)$ im best case.

Daraus ergibt sich dann $\Theta(n^2)$ und im best case $O(n)$.


## Merge Sort

```c
function merge_sort(e: [Element, n]): [Element, n] {
  if n == 1 { return [e_0] }
  else {
    m := floor(n/2)
    return merge(
      merge_sort([e[0],   ..., e[m]]),
      merge_sort([e[m+1], ..., e[n-1]])
    )
  }
}

function merge(a: [Element, n], b: [Element, m]): [Element, n+m] {
  res: [Element, n+m]

  i_a := 0
  i_b := 0

  for(j := 0; j < n+m; j++) {
    rtn[j] = a[i_a] < b[i_b]
      ? a[i_a++]
      : b[i_b++]
  }
  return res
}
```

Laufzeit muss mit Mastertheorem ermittelt werden:

$$T(n) = \Theta(n) + T(\lfloor n/2 \rfloor) + T(\lceil n/2 \rceil) \implies O(n \cdot \log n)$$

> Das auf- und Abrunden kann hier etwas nervig beim rechnen sein; praktisch kann man dies ignorieren ist aber nicht sehr mathematisch sauber.
>
> Einen Trick den man machen kann ist das array zur nächsten Zweierpotenz mit Werten aufzufüllen womit dann in jedem Fall das runden wegfällt.

## Quicksort

```c
function quick_sort(s: [Element, n]): [Element, n] {
  if |s| <= 1 return s

  // pivot element
  p := s[i] for "some" i

  a := [e in s: e <  p]
  b := [e in s: e == p]
  c := [e in s: e >  p]

  return []
    .concat(quick_sort(a))
    .concat(b)
    .concat(quick_sort(c))
}
```

Im schlechtesten Fall ist das **Pivotelement** immer das Minimum oder Maximum der Eingabe.

$$
T(n) = \begin{cases}
  \Theta(1)          &\text{ if } n = 1 \\\\
  \Theta(n) + T(n-1) &\text{ if } n \ge 2
\end{cases} \implies T(n) = \Theta(\sum_{i = 1}^{n} i) = \Theta(n^2)
$$

Im besten Fall ist das **Pivotelement** immer der Median der Eingabe

$$
T(n) = \begin{cases}
  O(1)                           &\text{ if } n = 1 \\\\
  O(n) + 2T(\lfloor n/2 \rfloor) &\text{ if } n \ge 2
\end{cases} \implies T(n) = O(n \log n)$$

Die Wahl des Pivotelementes kann also sehr entscheidend sein für die Laufzeit.
Hierfür wird gerne mal das erste Element, das letzte oder ein zufälliges Element gewählt.

Für ein zufälliges Array ergibt sich die Laufzeit $O(n \log n)$, somit ist die erwartete Laufzeit auch $O(n \log n)$.

Man kann sich neben der vorherigen relativ abstrakten Pseudocode Definition auch schlauere Varianten ausdenken, die den Quicksort inplace machen, diese sind dann aber etwas komplexer:

```c
function partition(a: [Element, n], l: N, r: N, k: N): N {
  p := a[k]
  swap(a[k], a[r])
  i := l
  for j := l to r-1 {
    if a[j] <= p {
      swap(a[i], a[j])
      i++
    }
  }

  swap(a[i], a[r])
  return i
}

proc quick_sort(a: [Element, n], l: N, r: N) {
  if l >= r then return
  k := pick_pivot_pos(a, l, r)
  m := partition(a, l, r, k)
  quick_sort(a, l, m-1)
  quick_sort(a, m+1, r)
}
```

Dieser Ansatz benutzt sozusagen einen "View" auf das gleiche Array.
Mit `l` und `r` werden die Grenzen des zu betrachtenen Arrayabschnittes angegeben.

Eine weitere mögliche Optimierung ist es für kleine Arrays einfach einen Insertion Sort zu nutzen, da Insertion Sort für kleine Arrays schneller ist als Quicksort.

Wenn man **Merge Sort** mit **Quicksort** vergleicht kommt man zu folgenden Pros/Cons:

**Merge Sort**:
- $O(n \log n)$ Zeit (im worst case sogar)
- Stable: gleiche Elemente behalten ihre vorherige Reihenfolge

**Quicksort**:
- inplace
- eventuell etwas schneller im Durchschnitt

## Bucketsort

Falls man relativ viele Informationen über die Daten die man sortieren will hat kann man auch einen bucket sort nutzen.

Wenn man sich sicher ist, dass Daten immer ganzzahlig sind und nur innerhalb eines bestimmten relativ kleinen Intervals kommen bietet es sich an die Elemente grob in buckets zu sortieren.

```c
proc bucket_sort(k, s: [Element, n]) {
  b : [[Element, n], k]

  for(e : s) {
    b[key(e)].pushBack(e)
  }

  s := []
    .concat(b[0])
    ...
    .concat(b[k-1]
}
```

Die Laufzeit ist hierbei einfach $O(n + K)$.


## Auswahl / Selection

Bei der Selection will man nicht ein Array sortieren, sondern einmalig den **Rang** $k$ eines Elementes $e$ für ein Array finden.

Dies bedeutet, dass man für ein Element wissen will an welcher Stelle es in der sortierten Version des Arrays auftreten würde.

Falls es mehrere Elemente gibt die den gleichen Wert wie $e$ haben ist $k$ nicht eindeutig.

Der Rang eines bestimmten Elementes ist leicht herauszufinden indem man einfach die Anzahl an kleineren Elementen zählt.
Für einen gegebenen Rang aber das passende Element zu finden ist schwieriger, dazu gibt es den **Quickselect** welcher auf dem *Quicksort* aufbaut.

### Quickselect

```c
function select(s: [Element, n], k): Element {
  pick p in s uniformly at random // pivot element

  a := [e in s: e < p]
  // got the |a| first elements of the sorted array; the k's element is part of this
  if a.length >= k { select(a, k) }

  b := [e in s: e = p]
  // the pivot element has exactly the rank k
  if a.length + b.length >= k { return p }

  c := [e in s: e > p]
  // k wasn't in the first (|a| + |b|) elements so it must be in c
  return select(c, k - a.length - b.length)
}
```

Quickselect hat erwartete Laufzeit $O(\vert s \vert)$.

