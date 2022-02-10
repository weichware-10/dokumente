# Analysis


## `public class Analysis`

beinhaltet Methoden die zur Analyse benötigt werden.

## `protected static String saveImage(String imageUrl)`

Speichert das Versuchs-Bild.

 * **Parameters:** `imageUrl` — URL des Versuchs-Bilds
 * **Returns:** Pfad zum gespeicherten Bild

## `protected static double calculateDepth(DataPoint dataPoint, double imageWidth, double imageHeight, Double minDepth, Double maxDepth)`

Berechnet die Tiefe eines Viewports. Falls min-/maxDepth nicht gegeben sind, wird die unkorrigierte Tiefe zurückgegeben (Zur Berechnug von min / max Depth)

 * **Parameters:**
   * `dataPoint` — der betroffene DataPoint
   * `imageWidth` — die Größe des Bildes
   * `imageHeight` — die Höhe des Bildes
   * `minDepth` — die minimale Tiefe, oder `null`, falls diese berechnet werden soll
   * `maxDepth` — die maximale Tiefe, oder `null`, falls diese berechnet werden soll
 * **Returns:** die berechnete Tiefe
