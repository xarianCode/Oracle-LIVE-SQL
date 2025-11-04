# Welcome to my "simplified" notes for the course of Oracle LIVE SQL databases!

This is a somewhat simplified format i'm using to somewhat clear up what basic introductions to Oracle LIVE SQL is with examples.

**PLEASE NOTE: IF ANY INFORMATION IS WRONG PLEASE LET ME KNOW VIA DISCORD AT fallinq_marx4509**

***

I will be covering a few chapters included from the LIVE SQL book, however written with examples me or collegues have written, as well as including any informative examples with breakdowns


This specific page will cover a few things mainly pretaining to chapters. 

<details>
<summary>TABLE OF CONTENTS</summary>

-[Chapter1](#chapter-1)   How to make a table and what it is and SYNTAX
-[Chapter2](#chapter-2)   How to make queries? Intro to syntax
-[Chapter3](#chapter-3)   How to make a subquery/How to modify a table?
-[WIP](#WIP) Coming Soon

</details>
Unlike most books, this glossary will include examples (via the .sql files), within the document itself and will also include examples alluded to.
*please feel free to leave feedback, correct any mistakes or submit your own, better or more detailed examples*


# Chapter 1
## How to make a table and what it is

Now
```sql
CREATE TABLE Example(
    ExampleID NUMBER(4),        -- This line of code establishes the "ID" as a definitive number up to 4 digits
    first_name VARCHAR(10),     -- This line simply explains what type of info will be input into "first name"
    last_name VARCHAR(20),      -- This line does the same as the previous, only it's "last name" instead
    city VARCHAR(20),           -- This line defines what goes in the "City" area
    Age NUMBER(2)               -- This line defines the "Age" as any 2 digit number (3 digits and 1 digit is unreal!)
);
```

***
Now usually when making a table, like above, you are only making the SKELETON of a table. **YOU** have to go in and input information yourself, though I'll demonstrate below!

*Please note the following information is beginner information and CAN be improved later on*

```sql
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

***

This might seem like a lot of info, so let's break it down so it's easier to process, ok?



# Chapter 2
