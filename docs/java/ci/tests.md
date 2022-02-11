---
title: Tests
parent: CI
grand_parent: Entwicklerhandbuch
nav_order: 3
---

# Tests
Der [tests](https://github.com/weichware10/repo-utils/blob/main/workflows/tests.yaml)-Workflow wird bei Änderungen von Java- und XML-Dateien aufgerufen und führt die Tests mit `mvn test` durch. Die Ergebnisse der Tests sind dann in Pull Requests einsehbar. Pull Requests dürfen nur gemerged werden, wenn keine Fehler mehr auftreten. Der Workflow schlägt auch fehl, falls der Build fehlschlägt.  
![Activity-Diagramm tests.yaml](https://raw.githubusercontent.com/weichware10/repo-utils/main/diagrams/tests.svg)
