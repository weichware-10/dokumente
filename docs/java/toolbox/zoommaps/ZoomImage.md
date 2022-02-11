---
title: ZoomImage
parent: zoommaps
grand_parent: toolbox
---

# ZoomImage


## `public class ZoomImage`

Ändert den aktuellen Bildausschnitt mit Hilfe gegebener Koordianten und gibt die neuen Koordinaten an ZoomCalculator zurück.

## `public ZoomImage(String location, ImageView imageView, ZoomCalculator zoomCalculator) throws MalformedURLException, IllegalArgumentException, FileNotFoundException, IOException`

Instanziiert ein neues ZoomImage.

 * **Parameters:** `location` — die Quelle der zu benutzenden Bilddatei
 * **Exceptions:**
   * `MalformedURLException` — 
   * `IllegalArgumentException` — 
   * `FileNotFoundException` — 
   * `IOException` — 

## `public Point2D getImageCoordinates(Point2D imageViewCoordinates)`

Berechnet die Bildkoordinaten von ImageView Koordinaten.

 * **Parameters:** `imageViewCoordinates` — ImageView Koordinaten
 * **Returns:** Bildkoordinaten

## `protected Rectangle2D move(Point2D position, double speed)`

Bewegt das Bild an die gegebenen Koordinaten, neue Koordinaten werden zurückgegeben.

 * **Parameters:** `position` — gegebene Koordinaten (float[3])
 * **Returns:** neue Koordinaten
