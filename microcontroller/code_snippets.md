# Code Snippets

## Ansteuerung der 8x7-Segment-Anzeige

```C
unsigned char Pos[4]={0x20,0x59,0x09,0x99};
for (int i = 0;i < 8;i++){	// loop i={0;1;2;3;4;5;6;7}
  unsigned char tmp;
  tmp = Pos[i / 2];				
  // Jedes Element aus `Pos` für 2 Iterationen in `tmp`
  tmp >>= ((i+1) % 2)*4;	
  // Jedes 2. Element, anfangend mit i=0, verschieben high->low
    
  P1 = (tmp & 0x0F) + ((i+1) % 2) * 16 + i * 32;  
  // Ausgabe, Adresse und DP
}
```

## Implementation des Decimal Adjust Assemblerbefehls

```C
unsigned int result da(unsigned char value){
  unsigned char cy=CY, ac=AC, low, high, hun=0;
  low = value & 0x0F;
  high = (value >> 4) & 0x0F;
       
  if (low > 9){							// > 9
    high++;									// Zehner +1
    low += 6;								// Einer bearbeiten, speichern
  }
  if (ac == 1)							// Durch Addition low nibble overflow
    low += 6;

  if (high > 9|| cy == 1){	// > 99
    hun++;                	// Hunderter +1
    high += 6;            	// Zehner bearbeiten, speichern
  }
  return (hun << 8) + (high << 4) + low;
  // Hunderter + Zehner + Einer
}
```

