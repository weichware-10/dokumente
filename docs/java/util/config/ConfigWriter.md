---
title: ConfigWriter
parent: config
grand_parent: util
---

# ConfigWriter


## `public final class ConfigWriter`

statische Klasse zum Speichern der Konfiguration.

## `private ConfigWriter()`

Cannot be instantiated.

## `public static boolean toJson(String location, Configuration configuration)`

Speichert eine {@link Configuration} in einer JSON-Datei.

 * **Parameters:**
   * `location` — - Speicherort der JSON-Datei
   * `configuration` — - die abzuspeichernde Configuration
 * **Returns:** Erfolgsboolean
 * **Since:** v0.2

## `public static boolean toDataBase(String configId, Configuration configuration)`

Speichert eine Konfiguration ab.

 * **Parameters:**
   * `configId` — - der gewünschte Speicherort
   * `configuration` — - die zu speichernde Konfiguration
 * **Returns:** Erfolgsboolean
