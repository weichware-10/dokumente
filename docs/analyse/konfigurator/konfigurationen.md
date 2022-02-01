---
title: Erstellen von Konfigurationen
parent: Konfigurator
grandparent: Analyse Benutzerhandbuch
---

# Erstellen von Konfigurationen

Konfigurationen können auf 2 Arten erstellt werden:
1. Konfigurator-GUI
2. JSON-Datei

Konfigurationen können auf 2 Arten gespeichert werden:
1. Datenbank
2. JSON-Datei

Der [Konfigurator](index.md) dient als Schnittstelle zwischen JSON, Datenbank und Nutzer.

---

## Konfigurationsmöglichkeiten
Die Spalte "JSON" beschreibt die Bennenung des Schlüssels in der JSON-Datei.

### allgemeine Optionen

| Option   | Typ                          | Beschreibung                                                                     | JSON       |
| -------- | ---------------------------- | -------------------------------------------------------------------------------- | ---------- |
| Tool-Typ | `"CODECHARTS" \| "ZOOMMAPS"` | der Tool-Typ des Versuches                                                       | `toolType` |
| Bild-URL | `string`                     | die URL, von der das Versuchsbild heruntergeladen werden soll                    | `imageUrl` |
| Intro    | `string`                     | eine Nachricht, die den Teilnehmenden vor Beginn des Versuchs angezeigt wird     | `intro`    |
| Outro    | `string`                     | eine Nachricht, die den Teilnehmenden nach Abschluss des Versuchs angezeigt wird | `outro`    |
| Tutorial | `boolean`                    | ob vor Beginn des Versuchs das Tutorial gezeigt werden soll                      | `tutorial` |

### CodeCharts Optionen

| Option                     | Typ        | Beschreibung                                                                                                                   | JSON                |
| -------------------------- | ---------- | ------------------------------------------------------------------------------------------------------------------------------ | ------------------- |
| String-ID                  | `string`   | die ID der String-Liste mit der das Raster gefüllt werden soll (für Datenbank)                                                 | `stringId`          |
| string                     | `string[]` | die Liste von Strings, mit der das Raster gefüllt werden soll (wird in GUI über Button neben String-ID gesetzt)                | `strings`           |
| Rastergröße X              | `integer`  | die Anzahl der horizontalen Unterteilungen im anfänglichen Raster                                                              | `initialSize[0]`    |
| Rastergröße Y              | `integer`  | die Anzahl der vertikalen Unterteilungen im anfänglichen Raster                                                                | `initialSize[1]`    |
| Anzeigezeit Bild           | `long`     | Anzeigezeit des Bildes, bevor das Raster angezeigt wird (in Millisekunden)                                                     | `timings[0]`        |
| Anzeigezeit Raster         | `long`     | Anzeigezeit des Rasters, bevor zur Eingabe aufgefordert wird (in Millisekunden)                                                | `timings[1]`        |
| Sichtbarkeit Rasterlinien  | `boolean`  | ob die Rasterlinien in der Rasteransicht sichtbar sein sollen                                                                  | `showGrid`          |
| relative Größenänderung    | `boolean`  | ob sich das Raster aufgrund von Nutzereingaben unterteilt werden soll (siehe horizontale / vertikale Unterteilungen)           | `relativeSize`      |
| zufällige String-Anordnung | `boolean`  | ob die String-Liste vor Beginn des Versuchs durchmischt werden soll, oder bei jedem Versuch die gleiche Reihenfolge haben soll | `randomized`        |
| Durchläufe                 | `integer`  | Anzahl der Durchläufe die richtig beantwortet werden müssen, damit der Versuch abgeschlossen wird                              | `iterations`        |
| maximale Tiefe             | `integer`  | maximale Anzahl von Unterteilungen die durchgeführt werden, falls die relative Größenänderung aktiviert ist                    | `maxDepth`          |
| horizontale Unterteilungen | `integer`  | Anzahl der horizontalen Unterteilungen einer Kachel, falls die relative Größenänderung aktiviert ist                           | `defaultHorizontal` |
| vertikale Unterteilungen   | `integer`  | Anzahl der vertikalen Unterteilungen einer Kachel, falls die relative Größenänderung aktiviert ist                             | `defaultVertical`   |

> wird eine oder beide der Optionen "horizontale Unterteilungen" und "vertikale Unterteilungen" auf einen Wert ≤ 0 gesetzt, wird eine dynamische Größenänderung angewendet. Dabei werden die Kacheln entlang der längeren Seite halbiert.

> die letzten 3 Optionen werden nur beachtet, falls die relative Größenänderung aktiviert ist. In der GUI müssen allerdings zum Abspeichern immer Werte eingetragen werden - diese werden jedoch nicht beachtet, sollte die relative Größenänderung nicht aktiviert sein.  
> beim Erstellen einer JSON-Konfiguration können diese Werte auf `null` gesetzt werden.

### ZoomMaps Optionen
| Option          | Type     | Beschreibung                                                                                | JSON              |
| --------------- | -------- | ------------------------------------------------------------------------------------------- | ----------------- |
| Fragestellung   | `string` | eine Frage zum Bild, welche die Testpersonen dazu anregt, das Bild zu untersuchen           | `question`        |
| Geschwindigkeit | `double` | die Geschwindigkeit des Zoomens, d.h. wie weit durch ein Klick / Scroll gezoomt werden soll | `speed`           |
| Bild-Breite     | `double` | wie breit das Bild auf dem Bildschirm erscheinen soll (Anzahl Pixel)                        | `imageViewWidth`  |
| Bild-Höhe       | `double` | wie hoch das Bild auf dem Bildschirm erscheinen soll (Anzahl Pixel)                         | `imageViewHeight` |

> Für die Bild-Dimensionen sollten Werte gewählt werden, bei dem man nicht ohne Zoomen die Frage beantworten kann.  
> Der Datentyp ist `double` aufgrund dessen, wie JavaFX Dimensionen intern verarbeitet, ist im Endeffekt aber ganzzahlig.

> die Option Fragestellung befindet sich in JSON in der allgemeinen Konfiguration, da dies zum Beispiel auch für die nicht-implementierte Funktionaliät des EyeTrackings benötigt werden könnte.


## JSON Beispiele

### CodeCharts JSON Konfiguration

```json
{
  "toolType" : "CODECHARTS",
  "trialId" : "trialId",
  "configId" : null,
  "question" : null,
  "intro" : "Willkommen zum Beispiel",
  "outro" : "Auf Wiedersehen beim Beispiel",
  "imageUrl" : "https://www.example.com/image.png",
  "tutorial" : true,
  "codeChartsConfiguration" : {
    "stringId" : "OBST",
    "strings" : [ "Apple", "Apricot", "Avocado", "Banana", "Bilberry", "Blackberry", "Blackcurrant", "Blueberry", "Boysenberry", "Currant", "Cherry", "Cherimoya", "Chico fruit", "Cloudberry", "Coconut", "Cranberry", "Cucumber", "Custard apple", "Damson", "Date", "Dragonfruit", "Durian", "Elderberry", "Feijoa", "Fig", "Goji berry", "Gooseberry", "Grape", "Raisin", "Grapefruit", "Guava", "Honeyberry", "Huckleberry", "Jabuticaba", "Jackfruit", "Jambul", "Jujube", "Juniper berry", "Kiwano", "Kiwifruit", "Kumquat", "Lemon", "Lime", "Loquat", "Longan", "Lychee", "Mango", "Mangosteen", "Marionberry", "Melon", "Cantaloupe", "Honeydew", "Watermelon", "Miracle fruit", "Mulberry", "Nectarine", "Nance", "Olive", "Orange", "Blood orange", "Clementine", "Mandarine", "Tangerine", "Papaya", "Passionfruit", "Peach", "Pear", "Persimmon", "Physalis", "Plantain", "Plum", "Prune", "Pineapple", "Plumcot", "Pomegranate", "Pomelo", "Purple mangosteen", "Quince", "Raspberry", "Salmonberry", "Rambutan", "Redcurrant", "Salal berry", "Salak", "Satsuma", "Soursop", "Star fruit", "Solanum quitoense", "Strawberry", "Tamarillo", "Tamarind", "Ugli fruit", "Yuzu" ],
    "initialSize" : [ 3, 5 ],
    "timings" : [ 1000, 200 ],
    "showGrid" : true,
    "relativeSize" : true,
    "randomized" : true,
    "iterations" : 5,
    "maxDepth" : 3,
    "defaultHorizontal" : -1,
    "defaultVertical" : -1
  },
  "zoomMapsConfiguration" : null
}
```

### ZoomMaps JSON Konfiguration

```json
{
  "toolType" : "ZOOMMAPS",
  "trialId" : "trialId",
  "configId" : null,
  "question" : "Was ist das für ein Beispiel?",
  "intro" : "Willkommen zum Beispiel",
  "outro" : "Auf Wiedersehen beim Beispiel",
  "imageUrl" : "https://www.example.com/image.png",
  "tutorial" : true,
  "codeChartsConfiguration" : null,
  "zoomMapsConfiguration" : {
    "speed" : 4.2,
    "imageViewWidth" : 300.0,
    "imageViewHeight" : 450.0
  }
}
```
