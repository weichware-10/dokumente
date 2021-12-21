---
title: Util
parent: db
grand_parent: util
---

# Util


## `protected static String generateId(String prefix, int length)`

Generiert eine ID. Muss nicht eindeutig sein!

 * **Parameters:**
   * `prefix` — - Präfix vor ID
   * `length` — - Länge der generierten ID (nur zufälliger Teil)
 * **Returns:** generierte ID

## `protected static void closeQuietly(Connection conn)`

Schließt eine Connection, ohne Fehler zu werfen.

 * **Parameters:** `conn` — - die zu schließende Connection

## `protected static void closeQuietly(Statement st)`

Schließt eine Statement, ohne Fehler zu werfen.

 * **Parameters:** `st` — - die zu schließende Statement

## `protected static void closeQuietly(ResultSet rs)`

Schließt eine ResultSet, ohne Fehler zu werfen.

 * **Parameters:** `rs` — - die zu schließende ResultSet
