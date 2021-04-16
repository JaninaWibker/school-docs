# Datenstrukturen

## Doppelt-verkettete Listen

Definiere die Items der Liste

```python
class Item<Element>
  e: Element
  next: Pointer<Item<Element>>
  prev: Pointer<Item<Element>>

  invariant next->prev = prev->next = this
```

Sowie die Liste an sich

```python
class List<Element>

  # dummy head element which has itself as next and prev
  h: Item<Element> = Item(⊥, this.head(), this.head()) 

  head(): Pointer<Item<Element>> {
    return address of this.h
  }

  isEmpty(): {0, 1} {
    return this.h.next == this.head()
  }

  first(): Pointer<Item<Element>> {
    assert !this.isEmpty()
    return this.h.next
  }

  last(): Pointer<Item<Element>> {
    assert !this.isEmpty()
    return this.h.prev
  }

  # for <..., α, a, ..., b, β, ...> and <..., t, ...> cut out
  # <a, ..., b> and insert it after t (t may be in a completely
  # different list): <..., α, β, ...> and <..., t, a, ... b, ...>
  proc splice(a, b, t: Pointer<Item<Element>>) {
    assert a before b
    assert t not in <a, ..., b>

    # cut out <a, ..., b>
    α := a->prev
    β := b->next
    α->next = β
    β->prev = α

    # insert <a, ..., b> after t
    τ := t->next

    b->next = τ
    a->prev = t

    t->next = a
    τ->prev = b
  }

  # move a to the spot right after b
  # <..., a, ..., b, ...> => <..., b, a, ...>
  proc moveAfter(a: Pointer<Item<Element>>, b: Pointer<Item<Element>>) {
    this.splice(a, a, b)
  }

  proc moveToFront(a: Pointer<Item<Element>>) {
    this.moveAfter(a, this.head())
  }

  proc moveToBack(a: Pointer<Item<Element>>) {
    this.moveAfter(a, this.last())
  }

  # this moves an element to the so-called freelist
  # freelists are a naive memory allocation scheme and moving
  # something there is similar to free'ing memory
  proc remove(a: Pointer<Item<Element>>) {
    this.moveAfter(a, freelist.head())
  }

  # remove first element of the list
  proc popFront() {
    this.remove(this.first())
  }

  # remove last element of the list
  proc popBack() {
    this.remove(this.last())
  }

  # insert a new element after a
  # this uses the freelist to allocate space for the new Item<Element>
  insertAfter(e: Element, a: Pointer<Item<Element>>): Pointer<Item<Element>> {
    assert !freelist.isEmpty()
    α = freelist.first()
    this.moveAfter(α, a)
    α->e = e
    return α
  }

  # insert a new element before a
  # this uses the freelist to allocate space for the new Item<Element>
  insertBefore(e: Element, a: Pointer<Item<Element>>): Pointer<Item<Element>> {
    this.insertAfter(e, a->prev)
  }

  proc pushFront(e: Element) {
    this.insertAfter(e, this.head())
  }

  proc pushBack(e: Element) {
    this.insertAfter(e, this.last())
  }

  proc concat(L: List<Element>) {
    this.splice(L.first(), L.last(), this.last())
  }

  # clear would be a better name
  proc makeEmpty() {
    freelist.concat(this)
  }

  proc findNext(e: Element, from: Pointer<Item<Element>>): Pointer<Item<Element>> {
    # use a so-called sentinal element
    # a sentinal-element is a way of circumventing having to do some kind of
    # check every iteration. In this example this check would be making sure
    # that you don't look through the list more than once. With this sentinal
    # element you provide a /thing/ that is later identifiably different than
    # other results while reducing the amount of comparisons to make.
    # If no element is found in the list the head element will be found. At this
    # point it is certain that not other element exists (from 'from' to 'head')
    this.h.e = x
    while from->e != x do
      from = from->next

    this.h.e = ⊥
    return from
  }
```

Die Länge einer Liste kann man nicht in O(1) berechnen, da man die Liste komplett durchlaufen muss.
Falls man dies umgehen will kann man extra die Größe abspeichern, dann geht aber splicing nichtmehr
in O(1) da klar sein muss wieviel verändert wird.

## Einfach-verkettete Listen

Vergleich mit doubly-linked-list
- weniger Speicherplatz (ignorierbarer Unterschied)
- minimal schneller in manchen Fällen da nur mit einem anstatt 2 pointern hantiert werden muss
- eingeschränkter, z.B. kein remove
- manchmal merkwürdige Schnittstellen da engeschränkt

Eine Invariante für singly-linked-lists konnte man in Graphenform aufstellen.

$\forall v \in \text{Item}: d_+(v) = 1$, also Eingangsgrad von 1 für jedes Item.

Dies zeigt auch, dass die Liste wieder kreisläufig sein muss, also `last->next = first`

```python
class SItem<Element>
  e: Element
  next: Pointer<Item<Element>>
```

```python
class SList<Element>

  ...

  proc sαplice(α, b, t: Pointer<SItem<Element>>) {
    tmp1 := α->next
    tmp2 := t->next

    α->next = b->next
    t->next = tmp1
    b->next = tmp2
  }
```

## Felder / Arrays

Arrays haben grundsätzlich erstmal beschränkt viel Platz.



## unbeschränkte Arrays / unbounded arrays

Unbounded arrays haben die Beschränkung des Platzes grundsätzlich nicht mehr, dies wird umgesetzt indem man ein normales Array hat, welches wachsen kann falls dies benötigt wird.
Damit das Array wachsen kann muss dann manchmal neuer Platz alloziert werden.

```python
class UArray<Element>
  w: N_0 = 1 # allocated size
  n: N_0 = 0 # current size
  b: Array<Element>[0..w-1]

  invariant n <= w <= α*n or (n=0 and w <= 2)

  op [i: N_0]: Element
    assert 0 <= i < this.n
    return this.b[i]

  size: N_0 {
    return this.n
  }

  # O(n), amortisiert aber O(1)
  proc pushBack(e: Element) {
    if this.n == this.w then
      # If all the space is used up allocate 2 times the current space
      # (a different value than 2 could have also been chosen like 1.5 for example).
      this.reallocate(2*n)
    this.b[n] = e
    this.n++
  }

  # O(n)
  proc reallocate(ω: N_0) {
    w := ω
    β := allocate(ω) as Array<Element>[0..ω-1]

    # copy over values
    β[0] = b[0]
    ...
    β[n-1] = b[n-1]

    free(b)
    b = β
  }

  # O(n), amortisiert aber O(1)
  proc popBack() {
    assert n > 0
    n--
    
    # if a lot of space is unused shrink the size of the array down
    if 4*n <= w and n > 0 then
      this.reallocate(2*n)
  }
```

## Stack - LIFO

Fundamental haben Stacks die Operationen `push` und `pop`.
Stacks können auf verschiedener Weise implementiert werden:
- doubly-linked list (möglich aber etwas overkill)
- singly-linked list (mittels pushFront / popFront)
- unbounded array (mittels pushBack / popBack)

## Queue - FIFO

Operationen sind `enqueue` und `dequeue`.
Queues können auf verschiedener Weise implementiert werden:
- doubly-linked-list (möglich aber etwas overkill)
- singly-linked-list (mittels `pushBack` / `popFront`; Pointer auf Listenende ist sehr wichtig)
- unbounded array (nicht effizient möglich)
- cyclical array (bounded FIFO)

## Bounded FIFO

Eine FIFO mit einer beschränkten Anzahl an Elementen.
Kann sehr leicht mit einem Array implementiert werden.
Hierfür wird einfach ein Zähler für head und tail hochgezählt und wenn er verwendet wird ge-modulo-ed.

```python
class BoundedFIFO<Element>(n: N_0)
  b: Array<Element>[0..n]
  h: N_0 = 0 // head
  t: N_0 = 0 // tail

  n: N_0 = n

  isEmpty(): {0, 1} {
    return this.h == this.t
  }

  size(): N_0 {
    return (this.t - this.h + this.n + 1) mod (this.n + 1)
  }

  proc pushBack(e: Element) {
    assert this.size() < this.n

    this.b[this.t] = e
    this.t = (this.t + 1) mod (this.n + 1)
  }

  proc popFront() {
    assert !this.isEmpty()
    this.h = (this.h + 1) mod (this.n + 1)
  }
```

## Deque - Double-ended queue

Eine Queue, welche von beiden Seiten aus verwendet werden kann, es können also Elemente am Anfang und am Ende angefügt werden und entfernt werden.

Implementierung einer Deque durch:
- doubly-linked-list: OK
- singly-linked-list: Nein (aber `pushFront`, `popFront` und `pushBack` sind OK, nur `popBack` ist problematisch)
- array: Nein
- cyclical array: Ja, ähnlich wie BoundedFIFO aufgebaut

Anwendungen:
- relativ selten - oft werden nur 3 der 4 Operationen gebraucht
- Work Stealing Load Balancing
- Undo/Redo Operationsbuffer

## Vergleich von Datenstrukturen


| Operation       | DList | SList | UArray | CArray | Anmerkung                         |
| --------------- | ----- | ----- | ------ | ------ | --------------------------------- |
| `[N_0]`         | n     | n     | 1      | 1      |                                   |
| `#.size()`      | 1*    | 1*    | 1      | 1      | inter-list splicing nicht möglich |
| `#.first()`     | 1     | 1     | 1      | 1      |                                   |
| `#.last()`      | 1     | 1     | 1      | 1      |                                   |
| `#.insert()`    | 1     | 1*    | n      | n      | nur `insertAfter`                 |
| `#.remove()`    | 1     | 1*    | n      | n      | nur `removeAfter`                 |
| `#.pushBack()`  | 1     | 1     | 1*     | 1*     | amortisiert, da reallocate        |
| `#.pushFront()` | 1     | 1     | n      | 1*     | amortisiert, da reallocate        |
| `#.popBack()`   | 1     | n     | 1*     | 1*     | amortisiert, da reallocate        |
| `#.popFront()`  | 1     | 1     | n      | 1*     | amortisiert, da reallocate        |
| `#.concat()`    | 1     | 1     | n      | n      |                                   |
| `#.splice()`    | 1     | 1     | n      | n      |                                   |
| `#.findNext()`  | n     | n     | n*     | n*     | sehr cache-effizient              |

> TODO: resized sich ein Cyclical Array automatisch oder warum sind push/pop Operationen nur amortisiert O(1)?


