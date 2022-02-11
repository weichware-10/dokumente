---
title: Analyzer
parent: analyse
grand_parent: gui
---

# Analyzer


## `public class Analyzer extends AbsScene`

Analysefenster der App.

## `public static void start()`

Startet die App.

## `public static void setAnalyseType(AnalyseType analyseType)`

Setzt den Analyse-Typ.

 * **Parameters:** `analyseType` — Analyse-Typ

## `public static void setTrialId()`

Setzt das ausgewählte Trial.

## `public static void setTrialIdComp()`

Setzt das ausgewählte Vergleichs Trial.

## `public static void setConfig()`

Setzt die Konfiguration für Heatmap bzw. Diagramm Analyse

## `public static void analyse()`

Start Analyse.

## `public static void export()`

Exportiert erstelltes Bild oder Diagramm.

## `private static boolean saveImage(String location)`

Speichert Bild unter location.

 * **Parameters:** `location` — Speicherort
 * **Returns:** Erfolgsboolean

## `private static boolean saveAsPng(String location)`

Speichert Diagramm als Bild unter location.

 * **Parameters:** `location` — Speicherort
 * **Returns:** Erfolgsboolean

## `public static void exportRaw()`

Entscheidet ob eine oder zwei Versuche exportiert werden (Raw-Daten).

## `private static void exportRaw(TrialData trial)`

Export von Raw-Daten des Versuchs.

## `public static void reset()`

Setzt Analyse zurück.
