---
title: CodeChartsPane
parent: codecharts
grand_parent: toolbox
---

# CodeChartsPane


## `public class CodeChartsPane extends AnchorPane`

Container für das CodeChartsRaster.

## `public CodeChartsPane(CodeChartsPane parent, int hoId, int veId, double width, double height)`

Erstellt eine neue CodeChartsPane.

 * **Parameters:**
   * `parent` — das Elter
   * `hoId` — horizontale ID
   * `veId` — vertikale ID
   * `width` — Breite
   * `height` — Höhe

## `public void subdivide()`

Unterteilt das CodeCharts-Pane mit den default-Maßen.

## `public void subdivide(int horizontal, int vertical)`

Unterteilt das CodeCharts-Pane mit selbst gewählten Maßen. Wird mindestens 1 Wert <= 0 gewählt, wird eine dynamische Unterteilung durchgeführt.

 * **Parameters:**
   * `horizontal` — Anzahl der Horizontalen Unterteilungen
   * `vertical` — Anzahl der Vertikalen Unterteilungen

## `public void philLeaves(List<String> usableStrings, List<String> currentStrings)`

initialisiert Felder mit Wörtern.

 * **Parameters:**
   * `usableStrings` — Liste mit Wörtern, die noch verwendet werden können
   * `currentStrings` — Wörter, die in Benutzung sind

## `public void setContent(String content)`

Setzt den Inhalt des CodeChartsPanes auf einen String.

 * **Parameters:** `content` — der gewünschte Inhalt

## `public CodeChartsPane getLeaf(String searchContent)`

findet das CodeChartsPane, welches den String enthält.

 * **Parameters:** `searchContent` — zu findender String
 * **Returns:** das CodeChartsPane-Objekt, welches den String enthält.

## `public void enableDebugStyle()`

Färbt das Pane zum Debuggen.

## `public void disableDebugStyle()`

versteckt den DebugStyle.

## `public void setDebugSplitting(boolean value)`

CodeChartsPanes teilen sich beim Klicken.

 * **Parameters:** `value` — ob das Feature aktiviert sein soll
