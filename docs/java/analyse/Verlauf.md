---
title: Verlauf
parent: Analyse
---

# Verlauf


## `public class Verlauf extends Analyse`

verantwortlich für die Erstellung des Verlauf-Diagramms.

## `public Verlauf(TrialData data)`

verantwortlich für die Erstellung des Verlauf-Diagramms.

 * **Parameters:** `data` — - Daten die zur Erstellung des Diagramms benötigt werden

## `public String createVerlauf()`

erstellt Diagramm, welches den Verlauf der betrachteten Bildkoordinaten darstellt.

 * **Returns:** Pfad des Bildes des erstellten Diagramms

## `private String drawDiagramm(List<List<Float>> diagrammData)`

zeichnet das Diagramm.

 * **Parameters:** `diagrammData` — - Daten die zur Erstellung des Diagramms benötigt werden
 * **Returns:** Pfad des Bildes des erstellten Diagramms
