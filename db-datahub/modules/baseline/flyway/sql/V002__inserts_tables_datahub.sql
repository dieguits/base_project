INSERT INTO main.employee_status (
    employee_status_code, employee_status_name, employee_status_desc, employee_status_active, created_by, date_created, updated_by, date_updated)
     VALUES ('CREA', 'Created', 'When the employee just join the company', true, user, now(), user, now());

INSERT INTO main.employee_position (
    employee_position_code, employee_position_name, employee_position_desc, employee_position_active, created_by, date_created, updated_by, date_updated)
    VALUES ('897', 'Cleaner', 'Person who is designed to clean houses or offices', true, user, now(), user, now());

INSERT INTO main.employee (employee_status_code, employee_first_name, employee_middle_name, employee_last_name, employee_email, employee_address, employee_postal_code, employee_position_code, phone_number, cell_phone, created_by, date_created, updated_by, date_updated)
    VALUES ('CREA', 'Diego', '', 'Perez', 'dapohp@gmail.com', '267 Roywood Dr', 'M3A 2G1','897', '', '6474102833', user, now(), user, now());