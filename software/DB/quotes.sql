-- Table: public.quotes

-- DROP TABLE IF EXISTS public.quotes;

CREATE TABLE IF NOT EXISTS public.quotes
(
    id integer NOT NULL DEFAULT nextval('quotes_id_seq'::regclass),
    lock boolean,
    quote_date timestamp without time zone NOT NULL,
    fitment_date timestamp without time zone,
    completion_date timestamp without time zone,
    total_price numeric(9,2),
    customers_id integer,
    quote_no integer NOT NULL,
    status character(30) COLLATE pg_catalog."default",
    fitment_address character(150) COLLATE pg_catalog."default",
    status_reason character(200) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.quotes
    OWNER to postgres;