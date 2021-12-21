---
title: ConfigLoader
parent: config
---

# ConfigLoader


## `public final class ConfigLoader`

statische Klasse zum Laden der Konfiguration.

## `private ConfigLoader()`

Cannot be instantiated.

## `public static Configuration fromJson(String location)`

Lädt eine Konfiguration aus einer JSON-Datei.

 * **Parameters:** `location` — - Speicherort der Datei.
 * **Since:** v0.2

## `public static Configuration fromDataBase(String configId)`

Lädt eine Konfiguration in die interne Struktur ({@link Configuration}).

 * **Parameters:** `configId` — - ID der Konfiguration
 * **Returns:** die geladene Konfiguration
