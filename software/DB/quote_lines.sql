-- Table: public.quote_lines

-- DROP TABLE IF EXISTS public.quote_lines;

CREATE TABLE IF NOT EXISTS public.quote_lines
(
    id integer NOT NULL DEFAULT nextval('quote_lines_id_seq'::regclass),
    lock boolean,
    price numeric(9,2),
    quotes_id integer,
    products_id integer,
    status character(30) COLLATE pg_catalog."default",
    name character(50) COLLATE pg_catalog."default",
    description character(200) COLLATE pg_catalog."default",
    size character(50) COLLATE pg_catalog."default",
    quantity integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.quote_lines
    OWNER to postgres;