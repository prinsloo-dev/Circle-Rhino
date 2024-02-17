-- Table: public.employees

-- DROP TABLE IF EXISTS public.employees;

CREATE TABLE IF NOT EXISTS public.employees
(
    id integer NOT NULL DEFAULT nextval('employees_id_seq'::regclass),
    lock boolean,
    appointment_date timestamp without time zone,
    termination_date timestamp without time zone,
    home_address character(150) COLLATE pg_catalog."default",
    tel_no character(30) COLLATE pg_catalog."default",
    email character(50) COLLATE pg_catalog."default",
    name character(50) COLLATE pg_catalog."default",
    surname character(50) COLLATE pg_catalog."default",
    departments_id integer,
    employee_no character(20) COLLATE pg_catalog."default",
    sa_id_number character(20) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;