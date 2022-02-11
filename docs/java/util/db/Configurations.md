---
title: Configurations
parent: db
grand_parent: util
---

# Configurations


## `public class Configurations`

Die Configurations-Tabelle beinhaltet die gespeicherten Konfigurationen.

## `protected Configurations(DataBaseClient dataBaseClient)`

Erstellt eine neue Verbindung zur Configurations-Tabelle.

 * **Parameters:** `dataBaseClient` — übergeordneter DataBaseClient

## `public Configuration get(String configId)`

Gibt die Konfiguration mit der configId aus der Datenbank zurück.

 * **Parameters:** `configId` — ID der Konfiguration
 * **Returns:** Konfigurationsobjekt

## `public String set(Configuration configuration)`

Fügt die Konfiguration der Datenbank hinzu.

 * **Parameters:** `configuration` — Konfiguration die hinzugefügt werden soll
 * **Returns:** Erstellte ID der hinzugefügten Konfiguration

## `public boolean getAvailability(String configId)`

Überprüft, ob configID exisitiert.

 * **Parameters:** `configId` — ID der Konfiguration
 * **Returns:** Verfügbarkeitsboolean

     <p>
 * **Since:** v0.3
