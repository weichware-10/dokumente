---
title: Heatmap
parent: Analyse
---

# Heatmap


## `public class Heatmap extends Analyse`

verantwortlich für die Erstellung der Heatmap.

## `public Heatmap(TrialData data, ConfigHeatmap confHm)`

verantwortlich für die Erstellung der Heatmap.

 * **Parameters:**
   * `data` — - Daten die zur Erstellung der Heatmaps benötigt werden
   * `confHm` — - Konfiguration der Heatmap

## `public String createHeatmap()`

erstellt die Heatmap, welche die relativen Häufigkeiten der betrachteten Bildkoordinaten darstellt.

 * **Returns:** Pfad des Bildes der erstellten Heatmap

## `public static String compHeatmaps(Heatmap heatmap1, Heatmap heatmap2)`

vergleicht zwei Heatmaps und erstellt aus dem Vergleich eine Heatmap.

 * **Parameters:**
   * `heatmap1` — - erste Heatmap für den Vergleich
   * `heatmap2` — - zweite Heatmap für den Vergleich
 * **Returns:** Pfad des Bildes der erstellten Heatmap
