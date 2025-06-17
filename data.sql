-- Active: 1750165746601@@127.0.0.1@3307@mysql

DROP employee;

INSERT INTO employee (NIN, eName)
VALUES 
('113567WD', 'John Smith');



INSERT INTO hotel (hotelNo, hotelLocation)
VALUES 
('H25', Edinburgh)

INSERT INTO contracts (contractNo, hotelNo)
VALUES
('C1024')

INSERT INTO emp_contracts (NIN, contractNo)
VALUES
