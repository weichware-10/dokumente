# TrialData


## `public class TrialData`

Stores the TrialData for the different tools internally.



also used to transfer Data

 * **Since:** v0.2

## `@JsonCreator(mode = JsonCreator.Mode.PROPERTIES) public TrialData(@JsonProperty("toolType") ToolType toolType, @JsonProperty("trialId") String trialId, @JsonProperty("configId") String configId, @JsonProperty("startTime") DateTime startTime, @JsonProperty("answer") String answer, @JsonProperty("data") List<DataPoint> dataPoints)`

Konstruktor für Jackson.

 * **Parameters:**
   * `toolType` — the tooltype of the stored data
   * `trialId` — the id of the trial
   * `configId` — the configuration of the stored data
   * `startTime` — Startzeitpunkt des Versuchs

     <p>
 * **Since:** v1.0

## `public TrialData(ToolType toolType, String trialId, String configId)`

Stores the TrialData for the different tools internally.

 * **Parameters:**
   * `toolType` — the tooltype of the stored data
   * `trialId` — the id of the trial
   * `configId` — the configuration of the stored data

     <p>
 * **Since:** v0.2

## `public List<DataPoint> getData()`

get the stored dataPoints.

 * **Returns:** the stored dataPoints

     <p>
 * **Since:** v0.2

## `public String getAnswer()`

get the answer.

 * **Returns:** the answer

     <p>
 * **Since:** v0.3

## `public void setAnswer(String answer)`

set the answer.

 * **Parameters:** `answer` — the answer

## `public void addDataPoint(Rectangle2D viewport, int depth)`

Add a DataPoint for CodeCharts.

 * **Since:** v0.2

## `public void addDataPoint(Rectangle2D viewport)`

Add a DataPoint for ZoomMaps.

 * **Parameters:** `viewport` — aktueller Ausschnitt beim ZoomBild

     <p>
 * **Since:** v1.2

## `public static TrialData fromJson(String location)`

Lädt eine Versuch/Trial aus einer JSON-Datei.

 * **Parameters:** `location` — Speicherort der Datei.

     <p>
 * **Since:** v1.0

## `public static boolean toJson(String location, TrialData trialData)`

Speichert eine `TrialData` in einer JSON-Datei.

 * **Parameters:**
   * `location` — Speicherort der JSON-Datei
   * `trialData` — den abzuspeichernden Versuch/Trial
 * **Returns:** Erfolgsboolean

     <p>
 * **Since:** v1.0
