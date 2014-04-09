pg_udp
======

very basic UDP packet (sending currently) in PostgreSQL via plpython

Install
======

clone https://github.com/iralls/pg_udp.git
```sql
postgres=# CREATE PROCEDURAL LANGUAGE plpythonu;
postgres=# \i <path/to/dir>/pg_udp/sql/udp.sql
```

Test
======
in another terminal on the same machine, use netcat to listen for incoming UDP packets:

nc -l -u -v 127.0.0.1 32000

verify that running the following shows your message in the previous terminal:

```sql
postgres=# SELECT udp_send('127.0.0.1', 32000, 'SOME MESSAGE');
```
