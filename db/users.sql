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
