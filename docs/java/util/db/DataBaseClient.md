---
title: DataBaseClient
parent: db
grand_parent: util
---

# DataBaseClient


## `public class DataBaseClient`

Datenbank-Klasse, durch die auf die Datenbank zugegriffen wird.

## `public DataBaseClient(String url, String user, String password, String schema)`

Erstellt einen neuen DatenbankClient.

 * **Parameters:**
   * `url` — - URL des Servers/Datenbank
   * `user` — - Benutzername
   * `password` — - Passwort
   * `schema` — - Das zu verwendende Schema

## `private boolean hasAccess(String table)`

Überprüft, ob Zugriff auf die spezifizierte Tabelle im Schema besteht.

 * **Parameters:** `table` — - die zu überprüfende Tabelle
 * **Returns:** Zugriffsboolean
