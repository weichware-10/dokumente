# Tutorial


## `public class Tutorial`

GUI für Tutorial.

## `public Tutorial(Stage primaryStage, ConfigClient configClient, DataBaseClient dataBaseClient)`

Startet das Tutorial.

 * **Parameters:**
   * `primaryStage` — Hauptfenster
   * `configClient` — configClient für Einstellungen
   * `dataBaseClient` — Verbindung zur Datenbank

## `public static void setImage(int tutorialCount, Button nextButton, Button backButton, ImageView imageView, Text progressText)`

Setzt das neue Bild vom Tutorial.

 * **Parameters:**
   * `tutorialCount` — In welchem Schritt vom Tutorial man ist
   * `nextButton` — Weiter Knopf um ihn zu deaktivieren
   * `backButton` — Zurück Knopf um ihn zu deaktivieren
   * `imageView` — Ausschnitt auf den das Bild geladen wird
   * `progressText` — Fortschrittsanzeige

## `public void startTest()`

Startet den Test, wenn man auf Test starten drückt.
