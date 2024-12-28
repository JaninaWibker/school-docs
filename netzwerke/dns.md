# DNS

## hosts file



## DNS Records

| DNS Record | Beschreibung |
| :--------- | :------------- |
| SOA        | **S**tart **o**f **A**uthority: definiert den Anfang einer authoritären DNS Zone und setzt globale Parameter für diese DNS Zone. Der `SOA`-Record darf damit nur eimal in einer DNS Zone auftreten. Der `SOA`-Record muss folgendes beinhalten:<ul><li>Serial Number</li><li>Primary name server</li><li>DNS Admin e-mail</li><li>Refresh Rate</li><li>Retry Rate</li><li>Expire time</li><li>Default TTL</li></ul> |
| NS         | **N**ame **S**erver: ordnet einem *domain name* / einer DNS Zone einen **Name Server** zu.<br />Beispiel: man besitzt `janina.lol` und will jemanden `nicht.janina.lol` als Subdomain geben, man will aber gleichzeitig nicht jedes mal wenn diese Person etwas verändern will dies durchführen, also fügt man einen `NS`-Record hinzu mit einem **Name Server** den diese Person kontrolliert (`NS`: `nicht.janina.lol` &rarr; `ns.jemand.net`) damit diese Person selber Veränderungen machen kann, welche dann aber nur für `nicht.janina.lol` gültig sind, indem sie dies am **Name Server** vornimmt den sie kontrolliert. |
| PTR        | **P**oin**t**e**r**: **TODO** |
| A          | **A**dress (IPv4): ordnet einem *domain name* eine **IPv4** Adresse zu.<br />Beispiel: Der *domain name* `janina.lol` soll zu `1.2.3.4` aufgelöst werden, also fügt man einen `A`-Record hinzu (`A`: `janina.lol` &rarr; `1.2.3.4`) |
| AAAA       | **A**dress (IPv6): ordnet einem *domain name* eine **IPv6** Adresse zu. `AAAA`-Records sind die IPv6 Version von `A`-Records. <br />Beispiel: Der *domain name* `janina.lol` soll zu `2003:e5:5f0f:b800:21b:fcff:fec5:23ac` aufgelöst werden, also fügt man einen `AAAA`-Record hinzu (`AAAA`: `janina.lol` &rarr; `2003:e5:5f0f:b800:21b:fcff:fec5:23ac`) |
| CNAME      | **C**anonical **Name**: ordnet einem *domain name* einen anderen als Alias zu.<br />Beispiel: man will, dass `docs.janina.lol` auch über `documentation.janina.lol` erreichbar ist. Man fügt also einen `CNAME`-Record hinzu (`CNAME`: `documentation.janina.lol` &rarr; `docs.janina.lol`)<br /><br />Man kann auch `@` nutzen um die aktuelle DNS Zone / den aktuellen *domain name* zu representieren, damit muss man wenn man `www.janina.lol` zu `janina.lol` zuordnen will nur noch `www` und `@` nutzen. |
