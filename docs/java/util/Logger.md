---
title: Logger
parent: util
grand_parent: Entwicklerhandbuch
---

# Logger


## `public class Logger`

Klasse, um Inhalte schön zu loggen. Hat verschiedene Log-Stufen:



- INFO



- WARN



- ERROR



- DEBUG



Jede Funktion hat 3 verschiedene Versionen, ohne Kontext, mit Kontext, und mit Kontext und Stack Trace.

 * **Since:** v0.2

## `private Logger()`

Kann nicht instanziiert werden.

## `public static void setLogfile(String filename)`

setzt log-Datei.

 * **Parameters:** `filename` — die Datei

## `public static void debug(String message)`

Loggt eine debug-Nachricht ohne Kontext.

 * **Parameters:** `message` — Inhalt
 * **Since:** v0.2

## `public static void debug(String message, Exception ctx)`

Loggt eine debug-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
 * **Since:** v0.2

## `public static void debug(String message, Exception ctx, boolean stackTrace)`

Loggt eine debug-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
   * `stackTrace` — ob ein StackTrace angezeigt werden soll
 * **Since:** v0.2

## `public static void error(String message)`

Loggt eine error-Nachricht ohne Kontext.

 * **Parameters:** `message` — Inhalt
 * **Since:** v0.2

## `public static void error(String message, Exception ctx)`

Loggt eine error-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
 * **Since:** v0.2

## `public static void error(String message, Exception ctx, boolean stackTrace)`

Loggt eine error-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
   * `stackTrace` — ob ein StackTrace angezeigt werden soll
 * **Since:** v0.2

## `public static void warn(String message)`

Loggt eine warn-Nachricht ohne Kontext.

 * **Parameters:** `message` — Inhalt
 * **Since:** v0.2

## `public static void warn(String message, Exception ctx)`

Loggt eine warn-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
 * **Since:** v0.2

## `public static void warn(String message, Exception ctx, boolean stackTrace)`

Loggt eine warn-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
   * `stackTrace` — ob ein StackTrace angezeigt werden soll
 * **Since:** v0.2

## `public static void info(String message)`

Loggt eine info-Nachricht ohne Kontext.

 * **Parameters:** `message` — Inhalt
 * **Since:** v0.2

## `public static void info(String message, Exception ctx)`

Loggt eine info-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
 * **Since:** v0.2

## `public static void info(String message, Exception ctx, boolean stackTrace)`

Loggt eine info-Nachricht mit Kontext.

 * **Parameters:**
   * `message` — Inhalt
   * `ctx` — Kontext, d.h. eine Exception
   * `stackTrace` — ob ein StackTrace angezeigt werden soll
 * **Since:** v0.2
