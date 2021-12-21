---
title: Configuration
parent: Config
---

# Configuration


## `public class Configuration`

Speichert allgemeine Konfiguration sowie Tool-Konfigurationen.

## `protected Configuration()`

Konstruktor ohne Initialisierungen, sodass eine leere Konfiguration erstellt werden kann. auch wichtig für Michael JSON Jackson.

## `public Configuration(String configId, String question, CodeChartsConfiguration codeChartsConfiguration)`

Konstruktor für Configuration vom Typ CodeChartsConfiguration.

 * **Parameters:**
   * `configId` — - configId der übergebenen Konfiguration
   * `question` — - Fragestellung zum Versuch
   * `codeChartsConfiguration` — - Konfiguration von CodeCharts

## `public Configuration(String configId, String question, ZoomMapsConfiguration zoomMapsConfiguration)`

Konstruktor für Configuration vom Typ ZoomMapsConfiguration.

 * **Parameters:**
   * `configId` — - configId der übergebenen Konfiguration
   * `question` — - Fragestellung zum Versuch
   * `zoomMapsConfiguration` — - Konfiguration von ZoomMaps
