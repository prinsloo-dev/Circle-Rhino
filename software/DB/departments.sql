-- Table: public.departments

-- DROP TABLE IF EXISTS public.departments;

CREATE TABLE IF NOT EXISTS public.departments
(
    id integer NOT NULL DEFAULT nextval('departments_id_seq'::regclass),
    name text COLLATE pg_catalog."default",
    entity_name text COLLATE pg_catalog."default",
    lock boolean
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;