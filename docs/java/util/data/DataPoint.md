---
title: DataPoint
parent: db
grand_parent: util
---

# DataPoint


## `public class DataPoint`

Speichert einen einzelnen Datenpunkt.

 * **Since:** v0.2

## `@JsonCreator(mode = JsonCreator.Mode.PROPERTIES) public DataPoint(@JsonProperty("dataId") int dataId, @JsonProperty("timeOffset") int timeOffset, @JsonProperty("viewport") Map<String, Double> viewport, @JsonProperty("depth") Integer depth)`

Konstruktor für Jackson.

 * **Parameters:**
   * `dataId` — die ID des dataPoints
   * `timeOffset` — die Zeit seit Versuchstart
   * `viewport` — aktueller Ausschnitt beim ZoomBild

     <p>
 * **Since:** v1.0

## `public DataPoint(int dataId, int timeOffset, Rectangle2D viewport)`

Speichert einen einzelnen Datenpunkt ohne Tiefe (ZOOMMAPS).

 * **Parameters:**
   * `dataId` — die ID des dataPoints
   * `timeOffset` — die Zeit seit Versuchstart
   * `viewport` — aktueller Ausschnitt beim ZoomBild

     <p>
 * **Since:** v0.2

## `public DataPoint(int dataId, int timeOffset, Rectangle2D viewport, int depth)`

Speichert einen einzelnen Datenpunkt mit Tiefe (CODECHARTS).

 * **Parameters:**
   * `dataId` — die ID des dataPoints
   * `timeOffset` — die Zeit seit Versuchstart
   * `viewport` — aktuell angeschautes Raster
   * `depth` — Rastertiefe

     <p>
 * **Since:** v0.3
