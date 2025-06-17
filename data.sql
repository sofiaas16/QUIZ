-- Active: 1750165746601@@127.0.0.1@3307@mysql

-- DESACTIVAR LAS FK
SET FOREIGN_KEY_CHECKS = 0;

-- VACIAR LAS TABLAS
TRUNCATE TABLE emp_contracts;
TRUNCATE TABLE contracts;
TRUNCATE TABLE hotel;
TRUNCATE TABLE employee;

-- ACTIVANDO LAS FK
SET FOREIGN_KEY_CHECKS = 1;

-- Insertar empleados 
INSERT INTO employee (NIN, eName) VALUES
('113567WD', 'John Smith'),
('234111XA', 'Diane Hocine'),
('712670YD', 'Sarah White');

-- Insertar hoteles 
INSERT INTO hotel (hotelNo, hotelLocation) VALUES
('H25', 'Edinburgh'),
('H4', 'Glasgow');

-- Insertar contratos 
INSERT INTO contracts (contractNo, hotelNo) VALUES
('C1024', 'H25'),
('C1025', 'H4');

-- Insertar relaciones empleado-contrato 
INSERT INTO emp_contracts (NIN, contractNo) VALUES
('113567WD', 'C1024'),
('234111XA', 'C1024'),
('712670YD', 'C1025'),
('113567WD', 'C1025');
