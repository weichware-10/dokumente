---
title: Datapoints
parent: db
grand_parent: util
grandparent: java
---

# Datapoints


## `class Datapoints`

Die Datapoints-Tabelle beinhaltet die gespeicherten Datapoints.

## `public List<DataPoint> get(String trialId)`

Gibt alle DataPoints zum Versuch mit trialId zurück.

 * **Parameters:** `trialId` — trialId des Versuchs
 * **Returns:** Liste von trialId

## `public void set(List<DataPoint> dataPoints, String trialId)`

Speichert DataPoints für das Trial mit trialId.

 * **Parameters:**
   * `dataPoints` — die zu speichernden DataPoints
   * `trialId` — trialId des Versuchs
