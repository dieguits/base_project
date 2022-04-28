CREATE SCHEMA IF NOT EXISTS main;

-- Employee table creation
CREATE TABLE main.employee (
    employee_id integer NOT NULL,
    --employee_number character varying(11) NOT NULL,
    employee_status_code character varying(4) NOT NULL,
    employee_first_name character varying(50) NOT NULL,
    employee_middle_name character varying(40),
    employee_last_name character varying(40) NOT NULL,
    employee_email character varying(80) NOT NULL,
    employee_address character varying(250),
    employee_postal_code character varying(8),
    employee_position_code character varying(6),
    phone_number character varying(24),
    cell_phone character varying(24),
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL
);

-- Primary key for employee
ALTER TABLE ONLY main.employee
    ADD CONSTRAINT pk_employee PRIMARY KEY (employee_id);

-- Sequence for employee table
ALTER TABLE main.employee ALTER COLUMN employee_id ADD GENERATED ALWAYS AS IDENTITY ( 
    SEQUENCE NAME main.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE main.employee_status (
    employee_status_code character varying(4) NOT NULL,
    employee_status_name character varying(25) NOT NULL,
    employee_status_desc character varying(250) NOT NULL,
    employee_status_active boolean NOT NULL,
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL   
);

-- Primary key for employee_status
ALTER TABLE ONLY main.employee_status
    ADD CONSTRAINT pk_employee_status PRIMARY KEY (employee_status_code);

-- employee position table creation
CREATE TABLE main.employee_position (
    employee_position_code character varying(4) NOT NULL,
    employee_position_name character varying(25) NOT NULL,
    employee_position_desc character varying(250) NOT NULL,
    employee_position_active boolean NOT NULL,
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL
);

-- Primary key for employee_position
ALTER TABLE ONLY main.employee_position
    ADD CONSTRAINT pk_employee_position PRIMARY KEY (employee_position_code);