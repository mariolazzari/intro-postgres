# Introduction to PostgreSQL

## About PostgreSQL

### Introduction

- 100% free
- Extends SQL
- ACID compliant
- Multi-version concurrency control
- Full range data types
- Several types of index
- Complex search
- APIs

### Extensions

[PGNX](https://pgnx.org)

### History

[Postgres history](https://www.postgresql.org/docs/current/history.html)

### ORDBMS vs REST

| Relational          | Non relational        |
| ------------------- | --------------------- |
| Standardized        | Non standardized      |
| Vertically scalable | Horizontally scalable |
| Fixed schema        | Dynamic schema        |
| ACID                | BASE                  |

## Deploying PostgreSQL

### Accessing PostgreSQL

[Download](https://www.postgresql.org/download/)

### Where and when

- On-premise
- Cloud
- Bare metal
- VMs

## Connecting to Postgre

### Via Cli

```sh
docker exec -it postgres bash
psql -V
su postgres
createdb linkedin
psql linkedin
```

### Via Gui

[pgAdmin4](https://www.pgadmin.org/download/pgadmin-4-windows/)

```sql
-- Table: public.bookmarks

-- DROP TABLE IF EXISTS public.bookmarks;

CREATE TABLE IF NOT EXISTS public.bookmarks
(
    id integer NOT NULL,
    url character varying(255) COLLATE pg_catalog."default" NOT NULL,
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    description character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT bookmarks_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bookmarks
    OWNER to mariolazzari;

INSERT INTO public.bookmarks(
 id, url, name, description)
 VALUES (1, 'https://mariolazzari.it', 'Mario Lazzari', 'My personal site');

SELECT id, url, name, description
 FROM public.bookmarks;
```

## Working with Postgres

### Resources and support


