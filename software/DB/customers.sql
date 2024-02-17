-- Table: public.customers

-- DROP TABLE IF EXISTS public.customers;

CREATE TABLE IF NOT EXISTS public.customers
(
    id integer NOT NULL DEFAULT nextval('customers_id_seq'::regclass),
    lock boolean,
    address character(150) COLLATE pg_catalog."default",
    tel_no character(30) COLLATE pg_catalog."default",
    email character(50) COLLATE pg_catalog."default",
    company_name character(50) COLLATE pg_catalog."default",
    contact_person character(50) COLLATE pg_catalog."default",
    contact_role character(50) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customers
    OWNER to postgres;