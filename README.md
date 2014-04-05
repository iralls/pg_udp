pg_udp
======

very basic UDP packet (sending currently) in PostgreSQL via plpython

Install
======

clone https://github.com/iralls/pg_udp.git
postgres=# CREATE PROCEDURAL LANGUAGE plpythonu;
postgres=# \i <path/to/dir>/pg_udp/sql/udp.sql
postgres=# CALL udp_send('127.0.0.1', 32000, 'SOME MESSAGE');

to test, compile and run /test/server.c (instructions in README) and monitor output
