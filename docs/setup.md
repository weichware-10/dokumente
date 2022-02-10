---
title: Datenbank Setup
nav_order: 4
parent: Entwicklerhandbuch
---
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
    ```bash
    mkdir pgAdmin && cd pgAdmin
    ```

- Docker Compose Datei erstellen und öffnen
    ```bash
    touch docker-compose.yml && vim docker-compose.yml
    ```

- Inhalt in `docker-compose.yml` einfügen:
    ```yml
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
    (Verlassen von vim mittels `esc`, `:`, `w`, `q`, `enter` 😉)

- Starten der Container
    ```bash
    docker-compose up
    ```
    Falls die Konsole geschlossen werden soll, ist der detached Modus zu empfehlen:
    ```bash
    docker-compose up -d
    ```

- Einrichtung PostgreSQL
    - PostgreSQL shell öffnen:
        ```bash
        docker exec -it pg_container psql -U root -W weichware
        ```
        - `docker exec -it pg_container`: Ausführen eines Befehls in PostgreSQL Container
        - `-U root`: Benutzername, in docker-compose gesetzt
        - `-W`: Abfrage des Passwort nach Absenden des Befehls
        - `weichware`: Name der Datenbank, in docker-compose gesetzt
    - root Passwort ändern
        ```bash
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

[aktuelle SQL Skripte](https://github.com/weichware10/dokumente/tree/main/db)

- Erstellen der Schemata, Tabellen
- Erstellen der Nutzer
- Benutzerrechte

#### tables.sql
```sql
-- SCHEMATA
CREATE SCHEMA IF NOT EXISTS public;
CREATE SCHEMA IF NOT EXISTS test;

-- TABLES
DROP TABLE IF EXISTS test.datapoints;
DROP TABLE IF EXISTS test.trials;
DROP TABLE IF EXISTS test.configurations;
DROP TABLE IF EXISTS test.strings;
DROP TABLE IF EXISTS public.datapoints;
DROP TABLE IF EXISTS public.trials;
DROP TABLE IF EXISTS public.configurations;
DROP TABLE IF EXISTS public.strings;

-- PUBLIC SCHEMA

CREATE TABLE IF NOT EXISTS public.strings (
    stringid varchar(255),
    orderid int,
    string varchar(255)
);
CREATE TABLE IF NOT EXISTS public.configurations (
    -- ALLGEMEIN
    configid varchar(255) UNIQUE,
    tooltype varchar(255) CHECK (tooltype LIKE 'CODECHARTS' OR tooltype LIKE 'ZOOMMAPS'),
    tutorial boolean,
    intro TEXT,
    outro TEXT,
    -- ZOOMMAPS / EYETRACKING
    question TEXT,
    imageurl TEXT,
    -- CODECHARTS
    stringid varchar(255),
    initialsize_x int,
    initialSize_y int,
    timings_0 bigint,
    timings_1 bigint,
    show_grid boolean,
    randomized boolean,
    relative_size boolean,
    max_depth int,
    iterations int,
    default_horizontal int,
    default_vertical int,
    -- ZOOMMAPS
    speed double precision,
    imageview_width double precision,
    imageview_height double precision,
    PRIMARY KEY(configid)
);
CREATE TABLE IF NOT EXISTS public.trials (
    trialid varchar(255) UNIQUE,
    configid varchar(255),
    starttime TIMESTAMP WITH TIME ZONE,
    answer TEXT,
    PRIMARY KEY(trialid),
    CONSTRAINT fk_config
        FOREIGN KEY(configid)
            REFERENCES public.configurations(configid)
);
CREATE TABLE IF NOT EXISTS public.datapoints (
    trialid varchar(255),
    dataid int,
    timeoffset int,
    viewportmin_x double precision,
    viewportmin_y double precision,
    viewport_width double precision,
    viewport_height double precision,
    depth int,
    CONSTRAINT fk_trial
        FOREIGN KEY(trialid)
            REFERENCES public.trials(trialid)
);

-- TEST SCHEMA

CREATE TABLE IF NOT EXISTS test.strings (
    stringid varchar(255),
    orderid int,
    string varchar(255)
);
CREATE TABLE IF NOT EXISTS test.configurations (
    -- ALLGEMEIN
    configid varchar(255) UNIQUE,
    tooltype varchar(255) CHECK (tooltype LIKE 'CODECHARTS' OR tooltype LIKE 'ZOOMMAPS'),
    tutorial boolean,
    intro TEXT,
    outro TEXT,
    -- ZOOMMAPS / EYETRACKING
    question TEXT,
    imageurl TEXT,
    -- CODECHARTS
    stringid varchar(255),
    initialsize_x int,
    initialSize_y int,
    timings_0 bigint,
    timings_1 bigint,
    show_grid boolean,
    randomized boolean,
    relative_size boolean,
    max_depth int,
    iterations int,
    default_horizontal int,
    default_vertical int,
    -- ZOOMMAPS
    speed double precision,
    imageview_width double precision,
    imageview_height double precision,
    PRIMARY KEY(configid)
);
CREATE TABLE IF NOT EXISTS test.trials (
    trialid varchar(255) UNIQUE,
    configid varchar(255),
    starttime TIMESTAMP WITH TIME ZONE,
    answer TEXT,
    PRIMARY KEY(trialid),
    CONSTRAINT fk_config
        FOREIGN KEY(configid)
            REFERENCES test.configurations(configid)
);
CREATE TABLE IF NOT EXISTS test.datapoints (
    trialid varchar(255),
    dataid int,
    timeoffset int,
    viewportmin_x double precision,
    viewportmin_y double precision,
    viewport_width double precision,
    viewport_height double precision,
    depth int,
    CONSTRAINT fk_trial
        FOREIGN KEY(trialid)
            REFERENCES test.trials(trialid)
);
```

#### users.sql
```sql
-- CREATE USER name WITH ENCRYPTED PASSWORD 'password' IN ROLE role
-- GRANT USAGE ON SCHEMA schema TO name
-- default is GRANT USAGE on PUBLIC

CREATE USER test_admin WITH ENCRYPTED PASSWORD '***' IN ROLE admin;
REVOKE USAGE ON SCHEMA public FROM test_admin;
GRANT USAGE ON SCHEMA test TO test_admin;
CREATE USER test_author WITH ENCRYPTED PASSWORD '***' IN ROLE author;
REVOKE USAGE ON SCHEMA public FROM test_author;
GRANT USAGE ON SCHEMA test TO test_author;
CREATE USER test_subject WITH ENCRYPTED PASSWORD '***' IN ROLE subject;
REVOKE USAGE ON SCHEMA public FROM test_subject;
GRANT USAGE ON SCHEMA test TO test_subject;
CREATE USER test_spectator WITH ENCRYPTED PASSWORD '***' IN ROLE spectator;
REVOKE USAGE ON SCHEMA public FROM test_spectator;
GRANT USAGE ON SCHEMA test TO test_spectator;

CREATE USER toolbox WITH ENCRYPTED PASSWORD '***' IN ROLE subject;

CREATE USER jjeschek WITH ENCRYPTED PASSWORD '***' IN ROLE admin;
GRANT USAGE ON SCHEMA test TO jjeschek;
```

#### roles.sql
```sql
CREATE ROLE spectator;
CREATE ROLE subject;
CREATE ROLE author;
CREATE ROLE admin;


-- SPECTATOR
REVOKE ALL ON DATABASE weichware FROM spectator;
GRANT CONNECT ON DATABASE weichware TO spectator;
-- all tables
GRANT SELECT ON ALL TABLES IN SCHEMA test, public TO spectator;

-- SUBJECT
REVOKE ALL ON DATABASE weichware FROM subject;
GRANT CONNECT ON DATABASE weichware TO subject;
-- select
GRANT SELECT ON public.configurations, public.trials, public.strings TO subject;
GRANT SELECT ON test.configurations, test.trials, test.strings TO subject;
-- trials
GRANT UPDATE ON public.trials TO subject;
GRANT UPDATE ON test.trials TO subject;
-- datapoints
GRANT INSERT ON public.datapoints TO subject;
GRANT INSERT ON test.datapoints TO subject;

-- AUTHOR
REVOKE ALL ON DATABASE weichware FROM author;
GRANT CONNECT ON DATABASE weichware TO author;
-- all tables
GRANT SELECT, INSERT ON ALL TABLES IN SCHEMA test TO author;
GRANT SELECT, INSERT ON ALL TABLES IN SCHEMA public TO author;
-- trials
GRANT UPDATE ON test.trials TO author;
GRANT UPDATE ON public.trials TO author;

-- ADMIN
REVOKE ALL ON DATABASE weichware FROM admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA test TO admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA public TO admin;
```
