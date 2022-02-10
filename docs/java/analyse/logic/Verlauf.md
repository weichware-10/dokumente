---
title: Verlauf
parent: logic
grand_parent: analyse
---

# Verlauf


## `public class Verlauf`

verantwortlich für die Erstellung des Verlauf-Diagramme.

## `public static LineChart<Number, Number> createVerlauf(List<TrialData> trials)`

Erstellt Verlauf-Liniendiagramm.

 * **Parameters:** `trials` — Versuch(e)
 * **Returns:** erstelltes Liniendiagramm

## `private static void fillSeries(List<DataPoint> dataPoints, double maxDepth, XYChart.Series<Number, Number> series)`

Setzt die einzelnen Datenpunkte im Graph (CodeCharts).

 * **Parameters:**
   * `dataPoints` — Versuchs-Daten
   * `maxDepth` — maximale Tiefe
   * `series` — Graph

## `private static void fillSeries(List<DataPoint> dataPoints, int width, int height, XYChart.Series<Number, Number> series)`

Setzt die einzelnen Datenpunkte im Graph (ZoomMaps).

 * **Parameters:**
   * `dataPoints` — Versuchs-Daten
   * `width` — Bildbreite
   * `height` — Bildhöhe
   * `series` — Graph
