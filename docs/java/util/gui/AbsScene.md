# AbsScene


## `public abstract class AbsScene`

Abstrakte Klasse, von der alle Szenen erben. Diese Klasse lädt vorallem FXML-Dateien.

## `protected static InitResult initialize(URL fxml)`

lädt die Szene intern und gibt die root-Instanz zurück.

 * **Parameters:** `fxml` — URL der FXML-Datei
 * **Returns:** das geladene Parent Objekt und die Controller-Instanz.

## `public static void setMenuBar(MenuBar menuBar, Parent root)`

Setzt die MenuBar, falls das in initialize geladene root-Objekt BorderPane ist.

 * **Parameters:** `menuBar` — die zu setzende Menüleiste

## `public static InitResult start(Stage primaryStage, URL fxml, Parent root, AbsSceneController controller, String title, MenuBar menuBar, Integer width, Integer height, String icon)`

Zeigt die Szene an.

 * **Parameters:** `primaryStage` — das Hauptfenster
 * **Returns:** das Initialisierungsergebniss

## `public static class InitResult`

root und controller des Lade-Vorgangs.
