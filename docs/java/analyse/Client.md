---
title: Client
parent: Analyse
---

# Client


## `public class Client`

Grundlegende Klasse für den Analyse-Client.

## `public boolean setAnalyseTypes(List<AnalyseType> selectedAnalyseTypes)`

setzt die ausgewählten Analyse-Typen.

 * **Parameters:** `selectedAnalyseTypes` — - die ausgewählten Analyse-Typen
 * **Returns:** *         true, falls Analyse-Typen gesetzt wurden;

     false, falls keine Analyse-Typen gesetzt wurden

## `public List<AnalyseType> getAnalyseTypes()`

gibt die Anaylse-Typen zurück.

 * **Returns:** Analyse-Typen

## `public boolean getData(DateTime start, DateTime end, ToolType dataType)`

holt die angeforderten Daten vom Speichermedium, falls diese existieren.

 * **Parameters:**
   * `start` — - Startzeitpunkt der benötigten Daten
   * `end` — - Endzeitpunkt der benötigten Daten
   * `dataType` — - Tool-Typ der benötigten Daten
 * **Returns:** *         true, falls benötigte Daten gefunden und gesetzt wurden;

     false, falls benötigte Daten nicht gefunden wurden

## `public boolean getDataForComp(DateTime start, DateTime end, ToolType dataType)`

holt die angeforderten Daten zum Vergleich vom Speichermedium, falls diese existieren.

 * **Parameters:**
   * `start` — - Startzeitpunkt der benötigten Daten zum Vergleich
   * `end` — - Endzeitpunkt der benötigten Daten zum Vergleich
 * **Returns:** *         true, falls benötigte Daten zum Vergleich gefunden und gesetzt

     wurden;

     false, falls benötigte Daten zum Vergleich nicht gefunden wurden

## `public void setConfigAnalyseHm(ConfigHeatmap confHm)`

verändert die Standard-Konfiguration für die Heatmap-Analyse.

 * **Parameters:** `confHm` — - Konfiguration der Heatmap-Analyse

## `public void setConfigAnalyseDia(ConfigDiagramm confDia)`

verändert die Standard-Konfiguration für die Diagramm-Analyse.

 * **Parameters:** `confDia` — - Konfiguration der Diagramm-Analyse

## `public void analyseData()`

führt die ausgewählten Analysen durch.

## `public void displayAnalyzedData()`

zeigt die analysierten Daten an.

## `public boolean export()`

exportiert die analysierten Daten.

 * **Returns:** *         true, wenn Export erfolreich war;

     false, wenn Fehler aufgetreten ist

## `public boolean exportRaw()`

exportiert die rohen Daten der Analyse.

 * **Returns:** *         true, wenn Export erfolreich war;

     false, wenn Fehler aufgetreten ist
