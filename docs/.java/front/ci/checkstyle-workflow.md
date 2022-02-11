---
title: Checkstyle Workflow
parent: CI
grand_parent: Entwicklerhandbuch
nav_order: 4
---

# Checkstyle (Workflow)
Der [checkstyle](https://github.com/weichware10/repo-utils/blob/main/workflows/checkstyle.yaml)-Workflow wird bei Änderungen von Java- und XML-Dateien aufgerufen und führt einen Stylecheck mit dem Maven-Checkstyle-Checkstyle Plugin durch. Eventuelle Probleme werden als Kommentar dem Pull Request beigefügt. Der Workflow schlägt fehl, falls es Style-Probleme gibt.  
Die Style-Regeln stammen aus [checkstyle.xml](https://github.com/weichware10/repo-utils/blob/main/checkstyle.xml) und werden [hier](checkstyle-rules.md) dokumentiert.  
Lokal kann man den Style mit `mvn verify checkstyle:check` oder mit der Checkstyle Erweiterung für VSCode checken.  
![Activity-Diagramm checkstyle.yaml](https://raw.githubusercontent.com/weichware10/repo-utils/main/diagrams/badges.svg)
