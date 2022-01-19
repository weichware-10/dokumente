# Diagram


## `@SuppressWarnings("unused") public class Diagram extends Analyse`

verantwortlich für die Erstellung der Diagramm-Diagramme.

## `public Diagram(TrialData data, DiagramConfig confDia)`

verantwortlich für die Erstellung der Diagramm-Diagramme.

 * **Parameters:**
   * `data` — Daten die zur Erstellung der Diagramme benötigt werden
   * `confDia` — Konfigurationen für die Diagrammarten

## `public String createViewTimeDistr()`

erstellt Diagramm, welches die relativen Häufigkeiten der Blickedauer bzw. Zoomstärken darstellt.

 * **Returns:** Pfad des Bildes des erstellten Diagramms

## `private List<Float> calcViewTimeDistr(List<List<Float>> timeTableData)`

berechnet die relativen Häufigkeiten der Blickdauer bzw. Zoomstärken

 * **Parameters:** `timeTableData` — Tabelle mit Zeitpunkt und Bildkoordinate bzw.

     Zoomstärke
 * **Returns:** Daten für die Erstellung des Diagramms

## `private String drawDiagramm(List<Float> diagrammData)`

zeichnet das Diagramm.

 * **Parameters:**
   * `diagrammData` — Daten die zur Erstellung des Diagramms benötigt werden
   * `type` — Diagramm-Typ des zu erstellenden Diagramms
 * **Returns:** Pfad des Bildes des erstellten Diagramms
