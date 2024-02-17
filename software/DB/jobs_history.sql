-- Table: public.jobs_history

-- DROP TABLE IF EXISTS public.jobs_history;

CREATE TABLE IF NOT EXISTS public.jobs_history
(
    id integer NOT NULL DEFAULT nextval('jobs_history_id_seq'::regclass),
    lock boolean,
    action_date timestamp without time zone,
    jobs_id integer,
    departments_id integer,
    action_employees_id integer,
    owner_employees_id integer,
    status character(30) COLLATE pg_catalog."default",
    payment character(20) COLLATE pg_catalog."default",
    comment character(200) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.jobs_history
    OWNER to postgres;