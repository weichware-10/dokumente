---
title: DataPoint
parent: data
---

# DataPoint


## `public class DataPoint`

Stores a single DataPoint.

 * **Since:** v0.2

## `public DataPoint(int dataId, int timeOffset, int[] coordinates, float zoomLevel)`

Stores a single DataPoint with zoomLevel.

 * **Parameters:**
   * `dataId` — - the id of the dataPoint
   * `timeOffset` — - the time since the trial started
   * `coordinates` — - the coordinates of the viewed picture
   * `zoomLevel` — - how far the user is zoomed in

     <p>
 * **Since:** v0.2

## `public DataPoint(int dataId, int timeOffset, int[] coordinates, int[] rasterSize)`

Stores a single DataPoint without zoomLevel.

 * **Parameters:**
   * `dataId` — - the id of the dataPoint
   * `timeOffset` — - the time since the trial started
   * `coordinates` — - the coordinates on the viewed picture
   * `rasterSize` — - width and height of the raster

     <p>
 * **Since:** v0.2

## `public DataPoint(int dataId, int timeOffset, int[] coordinates, int[] rasterSize, Float zoomLevel)`

Stores a single DataPoint with everyting (for database).

 * **Parameters:**
   * `dataId` — - the id of the dataPoint
   * `timeOffset` — - the time since the trial started
   * `coordinates` — - the coordinates on the viewed picture
   * `rasterSize` — - width and height of the raster

     <p>
 * **Since:** v0.3
