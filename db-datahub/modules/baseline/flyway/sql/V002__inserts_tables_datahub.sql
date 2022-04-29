DELETE FROM main.client where 1 = 1;
DELETE FROM main.service_type where 1 = 1;
DELETE FROM main.employee where 1 = 1;
DELETE FROM main.employee_position where 1 = 1;
DELETE FROM main.employee_status where 1 = 1;

INSERT INTO main.employee_status (
    employee_status_code, employee_status_name, employee_status_desc, employee_status_active, created_by, date_created, updated_by, date_updated)
VALUES ('CREA', 'Created', 'When the employee just join the company', true, user, now(), user, now()),
       ('ASSI', 'Assigned', 'When the employee is already asigned to a client', true, user, now(), user, now());

INSERT INTO main.employee_position (
    employee_position_code, employee_position_name, employee_position_desc, employee_position_active, created_by, date_created, updated_by, date_updated)
VALUES ('897', 'Cleaner', 'Person who is designed to clean houses or offices', true, user, now(), user, now()),
       ('999', 'Maintainance', 'Person who maintain the facilities', true, user, now(), user, now());

INSERT INTO main.employee (employee_status_code, employee_first_name, employee_middle_name, employee_last_name, employee_email, employee_address, employee_postal_code, employee_position_code, phone_number, cell_phone, created_by, date_created, updated_by, date_updated)
    VALUES ('CREA', 'Diego', '', 'Perez', 'dapohp@gmail.com', '267 Roywood Dr', 'M3A 2G1','897', '', '6474102833', user, now(), user, now()),
           ('CREA', 'Carlos', '', 'Becerra', 'carlos@gmail.com', '267 Roywood Dr', 'M3A 2G1','897', '', '6474102833', user, now(), user, now()),
           ('CREA', 'Jully', '', 'Rangel', 'jully@gmail.com', '267 Roywood Dr', 'M3A 2G1','897', '', '6474102833', user, now(), user, now());

INSERT INTO main.service_type (service_type_name, service_type_desc, created_by, date_created, updated_by, date_updated)
VALUES ('Clean H', 'Cleaning a house', user, now(), user, now()),
       ('Clean Off', 'Cleaning office', user, now(), user, now()),
       ('Remove Snow', 'Remove Snow', user, now(), user, now());

INSERT INTO main.client (
    client_first_name, client_last_name, client_email, client_home_address, client_home_postal_code, client_company_address, client_company_postal, created_by, date_created, updated_by, date_updated)
VALUES ('Priscila', 'Davila', 'pris1217@gmail.com', '267 Roywood Dr', 'M3A 2G1', '', '', user, now(), user, now()),
       ('Emanuela', 'Perez', 'ema1916@gmail.com', '267 Roywood Dr', 'M3A 2G1', '', '', user, now(), user, now()),
       ('Hanna', 'Perez', 'hanna1221@gmail.com', '267 Roywood Dr', 'M3A 2G1', '', '', user, now(), user, now());