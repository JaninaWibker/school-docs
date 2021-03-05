# Flipflops

## RS-Flipflop

| r   | s   | effect                              |
| :-: | :-: | :---------------------------------- |
| `0` | `0` | $q^{t+1} = q^t$ (save)              |
| `0` | `1` | $q^{t+1} = 1$   (set)               |
| `1` | `0` | $q^{t+1} = 0$   (reset)             |
| `1` | `1` | **undefined behaviour; do not use** |

## D-Flipflop

> "Delay" or "Data" Flipflop

|  d  |  effect               |
| :-: | :-------------------- |
| `0` | $q^{t+1} = 0$ (reset) |
| `1` | $q^{t+1} = 1$ (set)   |

## JK-Flipflop

|  j  |  k  | effect                              |
| :-: | :-: | :---------------------------------- |
| `0` | `0` | $q^{t+1} = q^t$ (save)              |
| `0` | `1` | $q^{t+1} = 0$   (reset)             |
| `1` | `0` | $q^{t+1} = 1$   (set)               |
| `1` | `1` | $q^{t+1} = \overline{q^t}$ (negate) |

## T-Flipflop

|  e  |  effect                             |
| :-: | :---------------------------------- |
| `0` | $q^{t+1} = q^t$ (save / do nothing) |
| `1` | $q^{t+1} = \overline{q^t}$ (toggle) |

