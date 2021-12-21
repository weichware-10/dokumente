# Trials


## `public class Trials`

Die Trials-Tabelle beinhaltet die gespeicherten Trials.

## `public String getConfigId(String trialId)`

Gibt config ID zurück, welche zu dem Versuch zugeordnet ist.

 * **Parameters:** `trialId` — - Trial ID des Versuchs
 * **Returns:** ID der Konfiguration

## `public TrialData getTrial(String trialId)`

Gibt den Versuch zu einer trialID zurück (falls vorhanden).

 * **Parameters:** `trialId` — - ID des Versuchs
 * **Returns:** TrialData zu trialId

## `public boolean set(TrialData trialData)`

Setzt die erhobenen Daten aus dem Versuch.

 * **Parameters:** `trialData` — - erhobene Daten
 * **Returns:** Erfolgsboolean

## `public boolean getAvailability(String trialId)`

Überprüft, ob trialID exisitiert und der Versuch dieser trialID bereits durchgeführt wurde.

 * **Parameters:** `trialId` — - ID des Versuchs
 * **Returns:** Verfügbarkeitsboolean

## `public List<String> add(String configId, int amount)`

Erstellt bestimmte Anzahl (amount) an Versuche (leer) mit der Konfiguration von configID.

 * **Parameters:**
   * `configId` — - ID der Konfiguration
   * `amount` — - Anzahl der Versuche
 * **Returns:** Liste mit vergebenen trialIDs

## `public List<TrialData> getList(String configId, ToolType toolType, DateTime minTime, DateTime maxTime, int amount)`

Sucht nach Trials in der Trials-Tabelle, die den Suchparametern entsprechen. Es wird eine "Vorschau" der Daten geliefert, d.h. die Objekte beinhalten keine DataPoints.

 * **Parameters:**
   * `configId` — - configId nach der gesucht wird, kann `null` sein
   * `toolType` — - ToolType nach dem gesucht wird, kann `null` sein
   * `minTime` — - Anfang des Zeitspannenfilters, kann `null` sein
   * `maxTime` — - Ende des Zeitspannenfilters, kann `null` sein
   * `amount` — - maximale Anzahl der zurückzugebenden Ergebnisse,

     bei Werten <= 0 wird default 50 benutzt.
 * **Returns:** Liste von TrialData Objekten, die keine DataPoints besitzen.
