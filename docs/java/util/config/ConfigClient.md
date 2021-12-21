---
title: ConfigClient
parent: config
grand_parent: util
---

# ConfigClient


## `public class ConfigClient`

Koordinator des Config-Moduls.



- Lädt Einstellungen.



- Gibt Einstellungen aus.



- Schreibt Einstellungen.

## `public Configuration getConfig()`

Gibt das komplette Einstellungs-Objekt zurück.

 * **Returns:** die Einstellungen. Kann {@code null} sein.

## `public boolean writeToJson(String location)`

Schreibt die Konfiguration in die spezifizierte JSON-Datei. Der Inhalt wird dabei überschrieben / die Datei neu angelegt.

 * **Parameters:** `location` — - Pfad zu JSON-Datei.
 * **Returns:** Erfolgsboolean
 * **Since:** v0.2

## `public boolean loadFromJson(String location)`

Lädt den Inhalt einer JSON-Datei in die interne Konfiguration.

 * **Parameters:** `location` — - Der Speicherort der JSON-Datei
 * **Returns:** Erfolgsboolean
 * **Since:** v0.2

## `public boolean loadFromDataBase(String trialId)`

Lädt eine Konfiguration in den internen Speicher.

 * **Parameters:** `trialId` — - ID des Versuchs.
 * **Returns:** Erfolgsboolean
