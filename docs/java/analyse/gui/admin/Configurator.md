---
title: Configurator
parent: admin
grand_parent: gui
---

# Configurator


## `public class Configurator extends AbsScene`

Konfigurator zum Anzeigen und Erstellen von Konfigurationen.

## `public static void start()`

startet den Konfigurator.

## `private static void fillGui(Configuration configuration, Mode nextMode)`

befüllt die GUI mit den Werten aus der Konfiguration.

 * **Parameters:**
   * `configuration` — die Konfiguration mit den Werten
   * `nextMode` — welcher Modus nach dem Befüllen ausgewählt werden soll

## `private static Configuration getConfiguration()`

konvertiert die Eingaben in eine Konfiguration.

 * **Returns:** die erstellte Konfiguration

## `protected static void loadFromJson()`

Lädt eine Konfiguration aus einer JSON-Datei.

## `protected static void writeToJson()`

Schreibt eine Konfiguration in eine JSON-Datei.

## `protected static void loadFromDataBase()`

Lädt eine Konfiguration aus der Datenbank.

## `protected static void writeToDataBase()`

Schreibt eine Konfiguration in die Datenbank.

## `protected static void showStringsDialog()`

Zeigt den passenden [StringsDialog](StringsDialog.md) an.

## `protected static Thread updateStringList(List<String> newStr)`

Updated die String-Liste, auf die stringId achtend / mit einer gerade importierten Liste.

 * **Parameters:** `newStr` — die neue String-Liste

## `protected static void changeToEdit()`

aktualisiert den Konfigurator-Modus.

## `protected enum Mode`

Modus vom Konfigurator.
