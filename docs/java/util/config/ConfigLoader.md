# ConfigLoader


## `public final class ConfigLoader`

statische Klasse zum Laden der Konfiguration.

## `private ConfigLoader()`

Cannot be instantiated.

## `public static Configuration fromJson(String location)`

Lädt eine Konfiguration aus einer JSON-Datei.

 * **Parameters:** `location` — Speicherort der Datei.
 * **Since:** v0.2

## `public static Configuration fromDataBase(String trialId, DataBaseClient dataBaseClient)`

Lädt eine Konfiguration in die interne Struktur ([Configuration](Configuration.md)).

 * **Parameters:**
   * `trialId` — ID der Konfiguration
   * `dataBaseClient` — Client für Datenbankzugriff
 * **Returns:** die geladene Konfiguration
 * **Since:** v1.0
