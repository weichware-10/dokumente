# Analyse


## `public class Analyse`

beinhaltet Methoden die zur Analyse benötigt werden.

## `public static String saveImage(String imageUrl)`

Speichert das Versuchs-Bild.

 * **Parameters:** `imageUrl` — URL des Versuchs-Bilds
 * **Returns:** Pfad zum gespeicherten Bild

## `protected static double findMaxDepth(List<DataPoint> data, double width, double height)`

Berechnet maximale Tiefe eines ZoomMaps-Versuchs.

 * **Parameters:**
   * `data` — Datenpunkte des Versuchs
   * `width` — Breite des verwendeten Bilds
   * `height` — Höhe des verwendeten Bilds
 * **Returns:** maximale Tiefe des Versuchs

## `protected static double calcRelDepthZm(Rectangle2D viewport, double imageWidth, double imageHeight, double maxDepth)`

Berechnet die relative Tiefe eines Datenpunktes (ZoomMaps).

 * **Parameters:**
   * `viewport` — Viewport des Datenpunktes
   * `imageWidth` — Breite Versuchs-Bild
   * `imageHeight` — Höhe Versuchs-Bild
   * `maxDepth` — maximale Tiefe des Versuchs
 * **Returns:** relative Tiefe des Datenpunkts

## `protected static double calcRelDepthCc(double depth, double maxDepth)`

Berechnet die relative Tiefe eines Datenpunktes (CodeCharts).

 * **Parameters:**
   * `depth` — Tiefe des Datenpunktes
   * `maxDepth` — Maximale Tiefe des Versuchs
 * **Returns:** relative Tiefe des Datenpunkts

## `protected static double calculateDepth(DataPoint dataPoint, double imageWidth, double imageHeight, Double minDepth, Double maxDepth)`

Berechnet die Tiefe eines Viewports. Falls min-/maxDepth nicht gegeben sind, wird die unkorrigierte Tiefe zurückgegeben (Zur Berechnug von min / max Depth)

 * **Parameters:**
   * `dataPoint` — der betroffene DataPoint
   * `imageWidth` — die Größe des Bildes
   * `imageHeight` — die Höhe des Bildes
   * `minDepth` — die minimale Tiefe, oder `null`, falls diese berechnet werden soll
   * `maxDepth` — die maximale Tiefe, oder `null`, falls diese berechnet werden soll
 * **Returns:** die berechnete Tiefe
