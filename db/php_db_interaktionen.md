# in PHP mit einer Datenbank interagieren

Man kann mit PHP sehr einfach auf eine Datenbank zugreifen und mit ihr interagieren.

Man kann entweder mit einem Datenbank / Connection Objekt arbeiten, also eher Objekt orientiert, oder einen eher prozeduellen Style nehmen.


> Objekt orientiert

```php
$mysqli = new mysqli($host, $user, $password, $db);

$result = $mysqli->query("SELECT * FROM Table");

$rows = [];

while($row = $result->fetch_array(MYSQLI_NUM))
  $rows[]=$row;
```

> Procedual

```php
mysqli_connect($host, $user, $password, $db);

mysqli_query("SELECT * FROM Table");

$rows = [];

while($row = mysqli_fetch_array(MYSQLI_NUM))
  $rows[]=$row;
```
