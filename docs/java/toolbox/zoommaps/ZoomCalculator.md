---
title: ZoomCalculator
parent: zoommaps
grand_parent: toolbox
---

# ZoomCalculator


## `public class ZoomCalculator`

Bekommt Rohdaten des Systems (Mausklick), berechnet neue Position des Bildes und meldet Speichererfolg.

## `public ZoomCalculator(TrialData data, ConfigClient configClient, ZoomMapsController controller) throws MalformedURLException, IllegalArgumentException, FileNotFoundException, IOException`

Erstelt einen neues ZoomCalculator.

 * **Parameters:**
   * `data` — ein (leeres) [TrialData](util/data/TrialData.md)-Objekt
   * `configClient` — der ConfigClient der App
   * `controller` — die ControllerKlasse der Szene
 * **Exceptions:**
   * `IOException` — 
   * `FileNotFoundException` — 
   * `IllegalArgumentException` — 
   * `MalformedURLException` — 

## `public void processInput(Point2D raw, int direction)`

verarbeitet Input von Benutzer/System.

 * **Parameters:** `raw` — Screenkoordinaten vom Mausklick (int[2])
