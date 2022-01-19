---
title: DataBaseClient
parent: db
grand_parent: util
grandparent: java
---

# DataBaseClient


## `public class DataBaseClient`

Datenbank-Klasse, durch die auf die Datenbank zugegriffen wird.

## `public DataBaseClient(String url, String user, String password, String schema)`

Erstellt einen neuen DatenbankClient.

 * **Parameters:**
   * `url` — URL des Servers/Datenbank
   * `user` — Benutzername
   * `password` — Passwort
   * `schema` — Das zu verwendende Schema

## `private boolean tableExists(String table)`

Überprüft, ob die spezifizierte Tabelle im Schema existiert.

 * **Parameters:** `table` — die zu überprüfende Tabelle
 * **Returns:** Existenzboolean
