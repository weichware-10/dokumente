# ZoomCalculator


## `public class ZoomCalculator`

Bekommt Rohdaten des Systems (Mausklick), berechnet neue Position des Bildes und meldet Speichererfolg.

## `public void processInput(int[] rawInput)`

verarbeitet Input von Benutzer/System.

 * **Parameters:** `rawInput` — - Screenkoordinaten vom Mausklick (int[2])

## `public boolean save()`

Sendet gesammelte Daten Speichermedium und meldet (Miss-)Erfolg.

 * **Returns:** Erfolgsmeldung

## `private float[] calculate(int[] rawInput)`

Berechnet die neue position des Bildes aus den Rohdaten.

 * **Parameters:** `rawInput` — - Screenkoordinaten vom Mausklick (int[2])
 * **Returns:** neue Screenkoordinaten
