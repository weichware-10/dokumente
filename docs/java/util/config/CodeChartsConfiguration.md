---
title: CodeChartsConfiguration
parent: config
grand_parent: util
grand_parent: java
---

# CodeChartsConfiguration


## `public class CodeChartsConfiguration`

Beinhaltet Konfiguration für CodeCharts-Versuche.

## `protected String stringId = "OBST"`

String-ID für die CodeCharts Konfiguration.

## `protected List<String> strings = Arrays.asList("Guave", "Chuchumber", "Fig")`

Strings für die CodeCharts Versuche.

## `protected int[] initialSize =`

Rastergröße der CodeCharts Konfiguration.

## `protected long[] timings =`

Zeit zum Wechsel von Bild zu Raster & Raster zu Eingabefeld der CodeCharts Konfiguration.

## `protected boolean showGrid = false`

ob das Raster bei der String-Anzeige angezeigt werden soll.

## `protected boolean relativeSize = true`

ob sich die Rastergröße nach Eingaben ändert.

## `protected boolean randomized = true`

ob die Strings zufällig eingesetzt werden.

## `protected Integer iterations = 15`

wie viele Durchläufe der Versuch haben soll.

## `protected Integer maxDepth = 5`

wie oft sich ein Feld maximal teilen soll. (nur bei `relativeSize = true`)

## `protected Integer defaultHorizontal = 2`

wie oft Felder horizontal geteilt werden sollen. Einstellen eines negativen Wertes, um dynamisch längere Seite zu halbieren. (nur bei `relativeSize = true`)

## `protected Integer defaultVertical = 2`

wie oft Felder vertikal geteilt werden sollen. Einstellen eines negativen Wertes, um dynamisch längere Seite zu halbieren. (nur bei `relativeSize = true`)

## `protected CodeChartsConfiguration()`

leerer Konstruktor. Wird für Jackson gebraucht (json writer) smooth criminal.

## `public CodeChartsConfiguration(String stringId, List<String> strings, int[] initialSize, long[] timings, boolean showGrid, boolean relativeSize, boolean randomized, int maxDepth, int iterations, int defaultHorizontal, int defaultVertical)`

Konstruktor für CodeCharts-Konfigurationen.

 * **Parameters:**
   * `stringId` — String-ID für die CodeCharts Konfiguration
   * `initialSize` — Rastergröße der CodeCharts Konfiguration
   * `timings` — Zeit zum Wechsel von Bild zu Raster & Raster zu Eingabefeld

     der CodeCharts Konfiguration
   * `showGrid` — ob das Raster bei der String-Anzeige angezeigt werden soll
   * `relativeSize` — ob sich die Rastergröße nach Eingaben ändert
   * `randomized` — ob die Strings zufällig eingesetzt werden
   * `iterations` — wie viele Durchläufe der Versuch haben soll
   * `maxDepth` — wie oft sich ein Feld maximal teilen soll

     (nur bei `relativeSize = true`)
   * `defaultHorizontal` — wie oft Felder horizontal geteilt werden sollen

     Einstellen eines negativen Wertes, um dynamisch längere Seite zu halbieren

     (nur bei `relativeSize = true`)
   * `defaultVertical` — wie oft Felder vertikal geteilt werden sollen

     Einstellen eines negativen Wertes, um dynamisch längere Seite zu halbieren

     (nur bei `relativeSize = true`)
