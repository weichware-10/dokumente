# Heatmap


## `public class Heatmap`

verantwortlich für die Erstellung der Heatmap.

## `public static String createHeatmap(TrialData trial, HeatmapConfig hmConfig)`

Erstellt Heatmap.

 * **Parameters:** `hmConfig` — Konfiguration
 * **Returns:** ?

## `public static String createHeatmapComp(TrialData trial, TrialData trialComp, HeatmapConfig hmConfig)`

Erstellt Heatmap-Vergleich.

 * **Parameters:**
   * `trial` — 1. Versuch
   * `trialComp` — 2. Versuch
   * `hmConfig` — Konfiguration
 * **Returns:** ?

## `private static class DataPointComparator implements Comparator<DataPoint>`

DataPointComparator.
