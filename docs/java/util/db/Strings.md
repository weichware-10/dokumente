---
title: Strings
parent: db
grand_parent: util
---

# Strings


## `public class Strings`

Die Strings-Tabelle beinhaltet Strings für CodeCharts-Versuche.

## `public Integer sizeOf(String stringId)`

Gibt die Größe einer in der Datenbank gespeicherten Liste zurück.

 * **Parameters:** `stringId` — die zu überprüfende stringId
 * **Returns:** die Größe der Liste, 0 wenn nicht vorhanden, `null bei Fehler`

## `public List<String> get(String stringId)`

Holt eine Liste von Strings aus der Datenbank ab.

 * **Parameters:** `stringId` — ID der String-Liste
 * **Returns:** Liste der Strings

## `public void set(String stringId, List<String> strings)`

Setzt eine String-Liste in der Datenbank.

 * **Parameters:**
   * `stringId` — die ID der Liste
   * `strings` — die Liste selbst
