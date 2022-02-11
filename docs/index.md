---
nav_exclude: true
---

# Dokumentation
`Softwareengineering Wintersemester 2021, Gruppe 10`

Hier kann die Dokumentation zu unserem Projekt gefunden werden.
Wichtige Anlaufpunkte:
* Benutzerhandbücher
    * Hinweise zur Benutzung der Apps (siehe auch Abschnitt unten)
    1. [Toolbox](toolbox/index.md)
        * [CodeCharts Tutorial](toolbox/codecharts.md)
        * [ZoomMaps Tutorial](toolbox/zoommaps.md)
    1. [Analyse](analyse/index.md)
        * [Erstellen von Konfigurationen](analyse/konfigurator/konfigurationen.md)
        * [Erstellen von Trials](analyse/trials/index.md)
* [Entwicklerhandbuch](java/java.md)
    * Sammlung der Javadocs
    * Überblick über Struktur
    * [Java Setup](java/java.md)
    * [Datenbank Setup](setup.md)

# Verwendung der Apps
* Die Installer-Dateien können benutzt werden, um die App schnell und einfach auf dem gewünschten Betriebssystem zu installieren:
    * [Installer-Dateien Toolbox](https://github.com/weichware10/toolbox/releases/latest)
    * [Installer-Dateien AnalyseClient](https://github.com/weichware10/toolbox/releases/latest)
* Sollte es gewünscht sein, die Anwendung selbst aus dem Quellcode zu kompilieren, können unter [Java Setup](java/java.md) die nötigen Informationen gefunden werden.

* ⚠️ Benutzung von 4K-Bildschirmen und Windows:
    * Das Windows High DPI Scaling kann mit den Standardeinstellungen zu Problemen führen
    * Eine temporäre Lösung stellt das manuelle Ändern der Fenstergröße dar, sobald es zu Skalierungsproblemen kommt.
    * Lösung:
        1. `.exe`-Datei des betroffenen Programms aufsuchen, Properties/Eigenschaften aufrufen
        1. Unter Compatibility/Kompatibilität auf `Change high DPI settings` klicken
        1. Unter High DPI scaling override `System (Enhanced)` auswählen
    * Nach Anwenden der genannten Schritte sollte die Skalierung funktionieren, die App könnte jedoch etwas unscharf erscheinen.
