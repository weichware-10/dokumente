---
title: TrialData
parent: data
grand_parent: util
---

# TrialData


## `public class TrialData`

Speichert die TrialData für die verschiedenen Tools intern.



auch für die Datenübertragung genutzt

 * **Since:** v0.2

## `@JsonCreator(mode = JsonCreator.Mode.PROPERTIES) public TrialData(@JsonProperty("toolType") ToolType toolType, @JsonProperty("trialId") String trialId, @JsonProperty("configId") String configId, @JsonProperty("startTime") DateTime startTime, @JsonProperty("answer") String answer, @JsonProperty("data") List<DataPoint> dataPoints)`

Konstruktor für Jackson.

 * **Parameters:**
   * `toolType` — Tool-Typ des Versuchs
   * `trialId` — ID des Versuchs
   * `configId` — Konfiguration des Versuchs
   * `startTime` — Startzeitpunkt des Versuchs

     <p>
 * **Since:** v1.0

## `public TrialData(ToolType toolType, String trialId, String configId)`

Speichert die TrialData für die verschiedenen Tools intern.

 * **Parameters:**
   * `toolType` — Tool-Typ des Versuchs
   * `trialId` — ID des Versuchs
   * `configId` — Konfiguration des Versuchs

     <p>
 * **Since:** v0.2

## `public void addDataPoint(Rectangle2D viewport, int depth)`

Fügt ein Datenpunkt hinzu (CodeCharts).

 * **Since:** v0.2

## `public void addDataPoint(Rectangle2D viewport)`

Fügt ein Datenpunkt hinzu (ZoomMaps).

 * **Parameters:** `viewport` — aktueller Ausschnitt beim ZoomBild

     <p>
 * **Since:** v1.2

## `public static TrialData fromJson(String location)`

Lädt eine Versuch/Trial aus einer JSON-Datei.

 * **Parameters:** `location` — Speicherort der Datei.

     <p>
 * **Since:** v1.0

## `public static boolean toJson(String location, TrialData trialData)`

Speichert eine `TrialData` in einer JSON-Datei.

 * **Parameters:**
   * `location` — Speicherort der JSON-Datei
   * `trialData` — den abzuspeichernden Versuch/Trial
 * **Returns:** Erfolgsboolean

     <p>
 * **Since:** v1.0
