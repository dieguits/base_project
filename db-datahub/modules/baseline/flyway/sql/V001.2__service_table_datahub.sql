-- Service table creation
CREATE TABLE main.service (
    service_id integer NOT NULL,
    service_number character varying(11) NOT NULL,
    service_status_code character varying(3) NOT NULL,
    service_type integer NOT NULL,
    service_name character varying(50) NOT NULL,
    service_desc character varying(1500),
    service_email character varying(80) NOT NULL,
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL,
    phone_number character varying(24),
    cell_phone character varying(24)
);

-- Primary key for employee
ALTER TABLE ONLY main.service
    ADD CONSTRAINT pk_service PRIMARY KEY (service_id);

-- Sequence for employee table
ALTER TABLE main.service ALTER COLUMN service_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME main.service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

-- Service type table creation
CREATE TABLE main.service_type (
    service_type_id integer NOT NULL,
    service_type_name character varying(50) NOT NULL,
    service_type_desc character varying(350) NOT NULL,
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL
);

-- Primary key for employee
ALTER TABLE ONLY main.service_type
    ADD CONSTRAINT pk_service_type PRIMARY KEY (service_type_id);

-- Sequence for employee table
ALTER TABLE main.service_type ALTER COLUMN service_type_id ADD GENERATED ALWAYS AS IDENTITY ( 
    SEQUENCE NAME main.service_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

-- Foreign key for service table
ALTER TABLE ONLY main.service
ADD CONSTRAINT service_type_service
FOREIGN KEY (service_type)
REFERENCES main.service_type(service_type_id);

-- Client table creation
CREATE TABLE main.client (
    client_id integer NOT NULL,
    client_first_name character varying(50) NOT NULL,
    client_last_name character varying(50) NOT NULL,
    client_email character varying(80) NOT NULL,
    client_home_address character varying(250),
    client_home_postal_code character varying(8),
    client_company_address character varying(250),
    client_company_postal character varying(8),
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL
);

-- Primary key for client
ALTER TABLE ONLY main.client
    ADD CONSTRAINT pk_client PRIMARY KEY (client_id);

-- Sequence for client table
ALTER TABLE main.client ALTER COLUMN client_id ADD GENERATED ALWAYS AS IDENTITY ( 
    SEQUENCE NAME main.client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

-- service status table creation
CREATE TABLE main.service_status (
    service_status_code character varying(6) NOT NULL,
    service_status_desc character varying(200) NOT NULL,
    service_status_active boolean NOT NULL,
    service_status_order integer NOT NULL,
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL
);

-- Primary key for service_status
ALTER TABLE ONLY main.service_status
    ADD CONSTRAINT pk_service_status PRIMARY KEY (service_status_code);

-- future service table creation
CREATE TABLE main.future_service (
    f_service_id integer NOT NULL,
    f_service_type_id integer NOT NULL,
    f_service_client_id integer NOT NULL,
    f_service_address character varying(250) NOT NULL,
    f_service_description character varying(800) NOT NULL,
    created_by character varying(30) NOT NULL,
    date_created timestamp(6) without time zone NOT NULL,
    updated_by character varying(30) NOT NULL,
    date_updated timestamp(6) without time zone NOT NULL
);

-- Primary key for future_service
ALTER TABLE ONLY main.future_service
    ADD CONSTRAINT pk_future_service PRIMARY KEY (f_service_id);

-- Sequence for client table
ALTER TABLE main.future_service ALTER COLUMN f_service_id ADD GENERATED ALWAYS AS IDENTITY ( 
    SEQUENCE NAME main.f_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

-- Foreign key for future service table with service_type
ALTER TABLE ONLY main.future_service
ADD CONSTRAINT future_service_type_service
FOREIGN KEY (f_service_type_id)
REFERENCES main.service_type(service_type_id);

-- Foreign key for future service table with client
ALTER TABLE ONLY main.future_service
ADD CONSTRAINT future_service_client
FOREIGN KEY (f_service_client_id)
REFERENCES main.client(client_id);