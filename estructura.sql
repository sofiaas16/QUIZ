-- Active: 1750165746601@@127.0.0.1@3307@mysql

CREATE TABLE IF NOT EXISTS employee (
    NIN VARCHAR (10) PRIMARY KEY,
    eName VARCHAR (50) NOT NULL
);

CREATE TABLE IF NOT EXISTS hotel ( 
    hotelNo VARCHAR (10) PRIMARY KEY,
    hotelLocation VARCHAR (50) NOT NULL
);

CREATE TABLE IF NOT EXISTS contracts (
    contractNo VARCHAR(10) PRIMARY KEY, 
    hotelNo VARCHAR(10),
        Foreign Key (hotelNo) REFERENCES hotel(hotelNo)
);

CREATE TABLE IF NOT EXISTS emp_contracts(
    NIN VARCHAR(10),
    contractNo VARCHAR(10),
    hoursWeek INT,
        Foreign Key (NIN) REFERENCES employee(NIN),
        Foreign Key (contractNo) REFERENCES contracts(contractNo)
);
