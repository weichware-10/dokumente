---
title: Files
parent: util
grand_parent: Java
---

# Files


## `public class Files`

Anlegen und Löschen von temporären Verzeichnissen und Dateien.

## `public static String createTempDir()`

erstellt einen temporären Ordner.

## `public static String saveImage(String imageUrl) throws MalformedURLException, IllegalArgumentException, FileNotFoundException, IOException`

speichert ein Bild von der URL im temp Ordner.

 * **Parameters:** `imageUrl` — URL vom Bild
 * **Returns:** Pfad zum Bild
 * **Exceptions:**
   * `MalformedURLException` — 
   * `IllegalArgumentException` — 
   * `FileNotFoundException` — 
   * `IOException` — 

## `public static String saveGeneratedImage(BufferedImage buffImage, String fileName) throws IOException, IllegalArgumentException`

Speichert genertiertes Bild im temp Ordner.

 * **Parameters:**
   * `buffImage` — Generiertes Bild
   * `fileName` — Dateiname
 * **Returns:** Speicheradresse
 * **Exceptions:**
   * `IOException` — 
   * `IllegalArgumentException` — 

## `public static Thread deleteTempDir()`

Löscht angelegten temporären Ordner beim Beenden der App.
