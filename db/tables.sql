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
