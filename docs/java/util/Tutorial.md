# Tutorial


## `public abstract class Tutorial`

Grundlegende Tutorial-Klasse.



Erbende Tutorial-Klassen müssen nur die Tutorial-Funktion implementieren.



Erbende Tutorial-Klassen müssen in ihrem Constructor super() callen.



Aufgerufen wird die start()-Funktion.

## `public Tutorial(ConfigClient configClient, ToolType toolType)`

Instaniziiert ein neues Tutorial-Objekt.

 * **Parameters:**
   * `configClient` — - der ConfigClient für die Einstellungen
   * `toolType` — - der ToolType des Tutorials

## `public void start()`

Startet die Ausführung des Tutorials.

## `private boolean getConfigState()`

findet heraus, ob für das Tool, dass Tutorial angezeigt werden soll.

 * **Returns:** configState -

     true, wenn angezeigt werden soll;

     false, wenn nicht angezeigt werden soll

## `private boolean show()`

Zeigt das Tutorial an, mit OK-Button und Checkbox. Ruft {@link #tutorial()} auf.

 * **Returns:** showAgain - Auswahl der User,

     ob das Tutorial nochmal angezeigt werden soll.

## `protected abstract void tutorial()`

Das Tutorial, welches angezeigt werden soll.
