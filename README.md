# Welcome to my "simplified" notes for the course of Oracle LIVE SQL databases!

This is a somewhat simplified format i'm using to somewhat clear up what basic introductions to Oracle LIVE SQL is with examples.

**PLEASE NOTE: IF ANY INFORMATION IS WRONG PLEASE LET ME KNOW VIA DISCORD AT fallinq_marx4509**

***

I will be covering a few chapters included from the LIVE SQL book, however written with examples me or collegues have written, as well as including any informative examples with breakdowns

For example creating tables with proper names, like


```
CREATE TABLE Example(
    ExampleID NUMBER(4),
    first_name VARCHAR(10),
    last_name VARCHAR(20),
    city VARCHAR(20),
    Age NUMBER(2)
);
```
then make sure to have information plugged into the actual table with example info:

```
INSERT INTO Example (ExampleID, first_name, last_name, city, Age)
        VALUES (1, 'Mason', 'Adams', 'El Paso', 25);
        INSERT INTO Example (ExampleID, first_name, last_name, city, Age)
        VALUES (2, 'Leslie', 'Red', 'New York', 34);
        INSERT INTO Example (ExampleID, first_name, last_name, city, Age)
        VALUES (1, 'Shawn', 'Velsor', 'Crestview', 22);
        INSERT INTO Example (ExampleID, first_name, last_name, city, Age)
        VALUES (1, 'Andrew', 'Gram', 'Jupiter', 32);
        INSERT INTO Example (ExampleID, first_name, last_name, city, Age)
        VALUES (1, 'Mason', 'Adams', 'Tevyat', 21);
        INSERT INTO Example (ExampleID, first_name, last_name, city, Age)
        VALUES (1, 'Andrew', 'Graves', NULL, 2);
```
