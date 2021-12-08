# ZoomBild


## `public class ZoomBild extends Bild`

Ändert den aktuellen Bildausschnitt mit Hilfe gegebener Koordianten und gibt die neuen Koordinaten an ZoomCalculator zurück.

## `public ZoomBild(String location) throws IllegalArgumentException`

Instanziiert ein neues ZoomBild.

 * **Parameters:** `location` — - die Quelle der zu benutzenden Bilddatei
 * **Exceptions:** `IllegalArgumentException` — falls die Location falsch ist

## `protected float[] move(float[] position)`

Bewegt das Bild an die gegebenen Koordinaten, neue Koordinaten werden zurückgegeben.

 * **Parameters:** `position` — - gegebene Koordinaten (float[3])
 * **Returns:** neue Koordinaten
