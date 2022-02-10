---
title: App
parent: gui
grand_parent: toolbox
---

# App


## `public class App`

Hauptbildschirm der Toolbox.

## `public App(Stage primaryStage, DataBaseClient dataBaseClient)`

zeigt den Hauptbildschirm an.

 * **Parameters:**
   * `primaryStage` — Fenster
   * `dataBaseClient` — der DataBaseClient, falls man ihn vom Ende

     wiederverwendet

## `protected void loadJsonConfig()`

lädt Config aus JSON und versucht den Test zu starten.

 * **Parameters:** `warnText` — Fehlernachricht

## `protected void startTrial(String trialId)`

Nimmt eine trialId entgegen und startet den Versuch. Bei Fehlern wird eine Warnung angezeigt.

 * **Parameters:** `trialId` — die ID des Versuches

## `protected void createZoomMapsTestTrial(TextField trialIdInput)`

Erstellt eine neue ZoomMaps Konfiguration, um die Konfiguration an `createTestTrial(Configuration, TextField)` weiterzugeben.

 * **Parameters:** `trialIdInput` — das TextField zum Eintragen der generierten ID

## `protected void createCodeChartsTestTrial(TextField trialIdInput)`

Erstellt eine neue CodeCharts Konfiguration, um die Konfiguration an `createTestTrial(Configuration, TextField)` weiterzugeben.

 * **Parameters:** `trialIdInput` — das TextField zum Eintragen der generierten ID

## `protected void createTestTrial(Configuration configuration, TextField trialIdInput)`

Erstellt einen neuen Versuch und trägt die dazugehörige ID in das Textfeld ein.

 * **Parameters:** `configuration` — die zu benutzende configuration

## `protected void changeDb()`

ändert die Zugangsdaten zur Datenbank. Dabei wird ein neuer Dialog eingeblendet

## `protected void openDocs()`

öffnet die Dokumentation im Browser.

## `protected void resetDataBaseConnection()`

Setzt die Datenbankverbindung auf die Werte in der .env Datei. Der Erfolg kann daran abgelesen werden, ob `dataBaseClient` `null` ist. Der ConfigClient wird im gleichen Zug angepasst.

## `private void setPermissionAccess()`

(de)aktiviert Elemente, basierend auf den Permissions des Datenbank-Nutzers.
