---
title: EyeTrackingCoordinator
parent: eyetracking
grand_parent: toolbox
---

# EyeTrackingCoordinator


## `public class EyeTrackingCoordinator`

Bestimmung der Blickkoordinaten und Abspeicherung der Versuchsdaten.

## `public void start()`

Startet den Versuch.

## `private void setup()`

Lädt für {@link #calculate()} benötigte Daten.

## `private int[] calculate()`

Rechnet aktuelle Blickkoordinaten aus.

 * **Returns:** x- und y-Wert auf dem Bildschirm
