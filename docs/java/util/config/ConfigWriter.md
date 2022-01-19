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

Speichert eine [Configuration](Configuration.md) in einer JSON-Datei.

 * **Parameters:**
   * `location` — Speicherort der JSON-Datei
   * `configuration` — die abzuspeichernde Configuration
 * **Returns:** Erfolgsboolean
 * **Since:** v0.2

## `public static String toDataBase(Configuration configuration, DataBaseClient dataBaseClient)`

Speichert eine Konfiguration ab.

 * **Parameters:**
   * `configuration` — die zu speichernde Konfiguration
   * `dataBaseClient` — Client für Datenbankzugriff
 * **Returns:** Erfolgsboolean
 * **Since:** v1.0
