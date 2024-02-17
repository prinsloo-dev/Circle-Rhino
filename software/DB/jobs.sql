-- Table: public.jobs

-- DROP TABLE IF EXISTS public.jobs;

CREATE TABLE IF NOT EXISTS public.jobs
(
    id integer NOT NULL DEFAULT nextval('jobs_id_seq'::regclass),
    lock boolean,
    job_date timestamp without time zone,
    quote_lines_id integer,
    job_no integer NOT NULL
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.jobs
    OWNER to postgres;