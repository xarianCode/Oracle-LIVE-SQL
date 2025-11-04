--#region Chapter 4--

--When not using a Contraint keywor during the creation, then SQL will auto default to
--a format called "SYS__Cn"


--Always apply DURING or AFTER  table creation.

--you can also use MODIFY  to add more constraints.

--NOT NULL "is NOT an available contraint at the beginning onf table creation".

--NOTE: //Any information that conflicts with the constrants will automaticall drop that information 

--you can add constraints by using the [ALTER TABLE] command.

--remember that only ONE primary key/contraints can only exist at a time per table.

CREATE TABLE ExampleTable1 (
    CustomerNumber INTEGER,
    First_name VARCHAR(25),
    Last_name VARCHAR(25),
    Region VARCHAR(2)
);

CREATE TABLE ExampleTable2 (
    CustomerNumber INTEGER,
    Car_brand VARCHAR(15),
    Customer_phonenumber VARCHAR(15)
);


INSERT INTO ExampleTable1 (CustomerNumber, First_name, Last_name, Region) VALUES
    (10708, 'Alex', 'Jones', 'SE'),
    (10709, 'Sammy', 'Shoemaker', 'NE'),
    (10710, 'Jack', 'Ripple', 'W'),
    (10711, 'Samuel', 'Rodriguez', 'S');


INSERT INTO ExampleTable2 (ExampleTable2.CustomerNumber, Car_brand, Customer_phonenumber) VALUES
    (10708, 'Mazda', '915-555-1101'),
    (10709, 'Toyota', '915-555-1919'),
    (10710, 'Ford', '915-555-2021'),
    (10711, 'BMW', '915-555-1929');


SELECT FROM ExampleTable1.CustomerNumber, ExampleTable1.First_name, ExampleTable2.Car_brand, ExampleTable2.Customer_phonenumber
    CHECK ExampleTable1.CustomerNumber = ExampleTable2.CustomerNumber
    