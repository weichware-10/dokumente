---
title: DataPoint
parent: data
grand_parent: util
---

# DataPoint


## `public class DataPoint`

Stores a single DataPoint.

 * **Since:** v0.2

## `@JsonCreator(mode = JsonCreator.Mode.PROPERTIES) public DataPoint(@JsonProperty("dataId") int dataId, @JsonProperty("timeOffset") int timeOffset, @JsonProperty("viewport") Map<String, Double> viewport, @JsonProperty("depth") Integer depth)`

Konstruktor für Jackson.

 * **Parameters:**
   * `dataId` — the id of the dataPoint
   * `timeOffset` — the time since the trial started
   * `viewport` — aktueller Ausschnitt beim ZoomBild

     <p>
 * **Since:** v1.0

## `public DataPoint(int dataId, int timeOffset, Rectangle2D viewport)`

Stores a single DataPoint without depth. (ZOOMMAPS)

 * **Parameters:**
   * `dataId` — the id of the dataPoint
   * `timeOffset` — the time since the trial started
   * `viewport` — aktueller Ausschnitt beim ZoomBild

     <p>
 * **Since:** v0.2

## `public DataPoint(int dataId, int timeOffset, Rectangle2D viewport, int depth)`

Stores a single DataPoint with depth (CODECHARTS).

 * **Parameters:**
   * `dataId` — the id of the dataPoint
   * `timeOffset` — the time since the trial started
   * `viewport` — aktuell angeschautes Raster.
   * `depth` — Rastertiefe

     <p>
 * **Since:** v0.3
