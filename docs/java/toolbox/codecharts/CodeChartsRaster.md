---
title: CodeChartsRaster
parent: codecharts
grand_parent: toolbox
---

# CodeChartsRaster


## `public class CodeChartsRaster`

Zeigt das Raster an und ist für die Berechnung. von Rastergröße und Koordinate zuständig.

## `public void show()`

Zeigt das Raster an.

## `public void setInput(String string)`

Bekommt den String von Eingabefenster. über den Coordinator zur berechnung.

## `public String getInput()`

für Test.

## `public void setData()`

Speichert die Daten aus CodeChartsCoordinator in den Variablen.

## `public void sendData()`

Sendet die Daten an das Coordinator.

## `private void loadPastRuns()`

Holt die Daten aus data in Coordinator für die Berechnungen. Speichert die Daten in ArrayList.

## `public void calculate()`

Berechnet die Coordinaten und evtl. neue Aufteilung des Rasters.
