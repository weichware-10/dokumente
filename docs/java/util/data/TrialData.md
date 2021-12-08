# TrialData


## `public class TrialData`

Stores the TrialData for the different tools internally.



also used to transfer Data

 * **Since:** v0.2

## `public TrialData(Enums.ToolType toolType, String trialId, String configId)`

Stores the TrialData for the different tools internally.

 * **Parameters:**
   * `toolType` — - the tooltype of the stored data
   * `trialId` — - the id of the trial
   * `configId` — - the configuration of the stored data

     <p>
 * **Since:** v0.2

## `public List<DataPoint> getData()`

get the stored dataPoints.

 * **Returns:** the stored dataPoints

     <p>
 * **Since:** v0.2

## `public void addDataPoint(int[] coordinates, int[] rasterSize)`

Add a DataPoint for CodeCharts.

 * **Parameters:**
   * `coordinates` — - the coordinates on the viewed picture
   * `rasterSize` — - width and height of the raster

     <p>
 * **Since:** v0.2

## `public void addDataPoint(int[] coordinates, float zoomLevel)`

Add a DataPoint for ZoomMaps.

 * **Parameters:**
   * `coordinates` — - the coordinates on the viewed picture
   * `zoomLevel` — - how far the user is zoomed in

     <p>
 * **Since:** v0.2
