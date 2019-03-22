# Anwendungsneutrale strukturierte Verkabelung nach EN50173

Die Norm **EN50173** beschreibt, wie ein Netzwerk physikalisch aufgebaut sein muss. Die Norm unterscheidet hier zwischen drei Bereichen: **Primär**, **Sekundär** und **Tertiär** mit ihren jeweiligen Verteilern: **Standortverteiler**, **Gebäudeverteiler** und **Etagenverteiler**.

## Verteiler

Die *Verteiler* sind eigentlich nur Switches, welche durch eine *Sterntopologie* entweder weitere Verteiler oder Endgeräte miteinander verbinden. 

### Standortverteiler

Der *Standortverteiler* verbindet die einzelnene Gebäude bzw. Gebäudeverteiler miteinander und stellt meistens die Verbindung zum Internet zur Verfügung. Der Standortverteiler befindet sich oft in einem der Gebäude in der Nähe des Gebäudeverteilers.

### Gebäudeverteiler

Der *Gebäudeverteiler* verbindet die einzelneen Etagen bzw. Etagenverteiler miteinder. Der Gebäudeverteiler befindet sich meist im Keller des Gebäudes.

### Etagenverteiler

Der *Etagenverteiler* verbindet die einzelnen Endgeräte miteinander. In jeder Etage sollte sich ein Etagenverteiler befinden. Da es oft viele Endgeräte gibt, benötigt dieser Verteiler gerne mal die höchste Anzahl an Ports.

## Bereiche

Die drei Bereiche normieren die Verbindung zwischen den verschiedenen **Verteilern**.

### Primärbereich

Der *Primärbereich* ist der Größte der drei Bereiche. Er nutzt *Lichtwellenleiter* und verbindet den Standortverteiler mit den Gebäudeverteilern. Die Lichtwellenleiter dürfen nicht länger als **1000m** sein. Um diese Reichweite zu gewährleisten werden üblicherweise *Monomodefasern* verwendet. Für die Verbindung zwichen dem Standortverteiler und den Gebäudeverteilern reicht in den meisten Fällen eine Übertragungsrate von **10Gbit/s** aus.

### Sekundärbereich

Der *Sekundärbereich* verbindet den Gebäudeverteiler mit den Etagenverteilern. In diesem Bereich werden auch Lichtwellenleiter verwendet, allerdings diesmal mit einer maximalen Reichweite von nur **500m**. Für die Verbindung zwischen dem Gebäudeverteiler und dem Etagenverteilern wird eine höhere Übertragunsrate benötigt. Meist wird eine Bandbreite von **300Gbit/s** verwendet. Um diese hohe Bandbreite zu garantieren werden *Multimodefasern mit Gradientenindexprofil* verwendet.

### Tertiärbereich

Der *Tertiärbereich* verbindet die Endgeräte mit dem Etagenverteiler. Auf Grund der Empfindlichkeit von Lichtwellenleitern sind diese nicht für den Tertiärbereich geeignet und es wird auf Kupferleitungen zurückgegriffen. Es werden *Twisted Pair*-Kabel verwendet, welche aber auf Grund ihrer Dämpfung auf eine maximale Länge von **100m** limitiert sind. Diese **100m** werden in **5m** für den Etagenverteiler und Patchfeld, **5m** für die Strecke von der Dose zum Endgerät und **90m** für die Strecke zwischen Patchfeld und Landose aufgeteilt.