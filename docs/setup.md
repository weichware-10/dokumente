# Setup

## Datenbank
>⚠️ beinhaltet nicht:
>    - Einrichtung von [pg_cron](https://github.com/citusdata/pg_cron), kann praktisch zum Aufräumen des test-schemas sein

Ziel: Installation von PostgreSQL und pgAdmin auf einem Server.  
Vorraussetzungen:
- Docker und Docker Compose sollten installiert sein  
    siehe [![](https://docs.docker.com/images/docker-docs-logo.svg)](https://docs.docker.com)

- Ports `5432` (PostgreSQL) und `5050` (pgAdmin) sollten frei und geöffnet(!) sein

Vorgehensweise:
- neuen Ordner auf dem Server erstellen
```
mkdir pgAdmin && cd pgAdmin
```

- Docker Compose Datei erstellen und öffnen
    ```
    touch docker-compose.yml && vim docker-compose.yml
    ```

- Inhalt in `docker-compose.yml` einfügen:
    ```
    version: '3.8'
    services:
      db:
        container_name: pg_container
        image: postgres
        restart: always
        environment:
          POSTGRES_USER: root
          POSTGRES_PASSWORD: root
          POSTGRES_DB: test_db
        ports:
          - "5432:5432"
      pgadmin:
        container_name: pgadmin4_container
        image: dpage/pgadmin4
        restart: always
        environment:
          PGADMIN_DEFAULT_EMAIL: admin@admin.com
          PGADMIN_DEFAULT_PASSWORD: root
        ports:
          - "5050:80"
    ```
    (Verlassen von vim mittels <kbd>esc</kbd>, <kbd>:</kbd>, <kbd>w</kbd>, <kbd>q</kbd>, <kbd>enter</kbd> 😉)

- Starten der Container
    ```
    docker-compose up
    ```
    Falls die Konsole geschlossen werden soll, ist der detached Modus zu empfehlen:
    ```
    docker-compose up -d
    ```

- Einrichtung PostgreSQL
    - PostgreSQL shell öffnen:
        ```
        docker exec -it pg_container psql -U root -W weichware
        ```
        - `docker exec -it pg_container`: Ausführen eines Befehls in PostgreSQL Container
        - `-U root`: Benutzername, in docker-compose gesetzt
        - `-W`: Abfrage des Passwort nach Absenden des Befehls
        - `weichware`: Name der Datenbank, in docker-compose gesetzt
    - root Passwort ändern
        ```
         \password root
        ```

- pgAdmin Einrichtung
    - über IP-Adresse und Port 5050 [Verwendung von [duckdns.org](https://www.duckdns.org/) für eine kostenlose domain]
    - Einloggen mit `admin@admin.com` und Passwort `root`
    - Erstellen eines neuen Admin-Nutzers
    - Einloggen mit den neu erstellten, sicheren Benutzerdaten, löschen des alten Admin-Acounts

- Hinzufügen des PostgreSQL Servers in pgAdmin (durch docker-compose erstellt)
    - Name: selbst zu wählend
    - Adresse: `pg_container` (Name des Containers)

    - Benutzername: `root`, Passwort: im letzten Schritt vergebenes Passwort

- Schemata, Tabellen, Benutzer erstellen
    - einloggen mit root (`docker exec -it pg_container psql -U root -W weichware`)
    - oder Datenbank in pgAdmin auswählen -> Tools -> Query Tool
    - siehe Abschnitt SQL
    - Bei Benutzerrechten wird nach dem Prinzip der verteilten Rechte vorgegangen, möglichst wenig Rechte für Users
### SQL

[siehe Github Gist](https://gist.github.com/joshuajeschek/c4c8866bdc6cd23564a9d962bce718c1.js)
<script src="https://gist.github.com/joshuajeschek/c4c8866bdc6cd23564a9d962bce718c1.js" ></script>

- Erstellen der Schemata, Tabellen
- Erstellen der Nutzer
- Benutzerrechte
