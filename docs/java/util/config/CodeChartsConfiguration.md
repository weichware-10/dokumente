---
title: CodeChartsConfiguration
parent: config
---

# CodeChartsConfiguration


## `public class CodeChartsConfiguration extends ToolConfiguration`

Beinhaltet Konfiguration für CodeCharts-Versuche.

## `protected CodeChartsConfiguration()`

leerer Konstruktor. Wird für Jackson gebraucht (json writer) smooth criminal.

## `public CodeChartsConfiguration(List<String> strings, int[] initialSize, long[] timings, boolean tutorial, List<String> imageUrls)`

Konstruktor für die CodeCharts Konfiguration.

 * **Parameters:**
   * `strings` — - Strings für die CodeCharts Konfiguration
   * `initialSize` — - Rastergröße der CodeCharts Konfiguration
   * `timings` — - Zeit zum Wechsel von Bild zu Raster & Raster zu Eingabefeld

     der CodeCharts Konfiguration
   * `tutorial` — - Anzeige des Tutorials
   * `imageUrls` — - Adressen der Bilder
