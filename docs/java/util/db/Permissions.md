# Permissions


## `public class Permissions`

Klasse zum Abfragen von Permissions.

## `public Permissions(DataBaseClient dataBaseClient)`

Erstellt ein neues Permissions Objekt und überprüft die Permissions für den Nutzer des [DataBaseClient](DataBaseClient.md)s.

 * **Parameters:** `dataBaseClient` — der verknüpfte [DataBaseClient](DataBaseClient.md)

## `private Set<Permission> getPermissions(String table)`

Fragt Berechtigungen für eine Tabelle ab.

 * **Parameters:** `table` — Tabelle die abgefragt werden soll.
 * **Returns:** Berechtigungs-Liste

## `public boolean satisfies(Collection<Permission> configurationsPermissions, Collection<Permission> trialsPermissions, Collection<Permission> datapointsPermissions, Collection<Permission> stringsPermissions)`

Überprüft, ob der angemeldete Nutzer die angegebenen Berechtigungen hat.



Jeder Parameter kann `null` sein, falls die Berechtigungen für diese Tabelle nicht beachtet werden sollen

 * **Parameters:**
   * `configurationsPermissions` — Berechtigungen für configurations-Tabelle
   * `trialsPermissions` — Berechtigungen für trials-Tabelle
   * `datapointsPermissions` — Berechtigungen für datapoints-Tabelle
 * **Returns:** Berechtigungserfüllungsboolean
