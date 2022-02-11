---
title: Diagram
parent: logic
grand_parent: analyse
---

# Diagram


## `public class Diagram`

verantwortlich für die Erstellung der Diagramm-Diagramme.

## `public static BarChart<String, Number> createDiagramBarChart( TrialData trial, DiagramConfig diaConfig)`

Erstellt Balkendiagramm über die Relative Tiefenverteilung der Datenpunkte.

 * **Parameters:**
   * `trial` — Versuch
   * `diaConfig` — Konfiguration
 * **Returns:** erstelltes Balkendiagramm

## `public static PieChart createDiagramPieChart(TrialData trial, DiagramConfig diaConfig)`

Erstellt Kreisdiagramm über die Relative Tiefenverteilung der Datenpunkte.

 * **Parameters:**
   * `trial` — Versuch
   * `diaConfig` — Konfiguration
 * **Returns:** erstelltes Kreisdiagramm
