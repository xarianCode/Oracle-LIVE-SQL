# Welcome to my "simplified" notes for the course of Oracle LIVE SQL databases!

This is a somewhat simplified format i'm using to somewhat clear up what basic introductions to Oracle LIVE SQL is with examples.

>[!Important]
>**PLEASE NOTE: IF ANY INFORMATION IS WRONG PLEASE LET ME KNOW VIA DISCORD AT fallinq_marx4509**

***

I will be covering a few chapters included from the LIVE SQL book, however written with examples me or collegues have written, as well as including any informative examples with breakdowns


This specific page will cover a few things mainly pretaining to chapters. 

***
<details>
<summary>TABLE OF CONTENTS</summary>

-[Chapter1](#chapter-1)<br>
    _How to make a table and what it is and SYNTAX_ <br>
- [Chapter2](#chapter-2)<br>
    _How to make queries? Intro to syntax_ <br>
- [Chapter3](#chapter-3)<br>
    _How to make a subquery/How to modify a table?_ <br>
- [WIP](#WIP)<br>
    _Coming Soon_ <br>

</details>

***

Unlike most books, this glossary will include examples (via the .sql files), within the document itself and will also include examples alluded to.

>[!Please note]
>*please feel free to leave feedback, correct any mistakes or submit your own, better or more detailed examples*


# Chapter 1
**_How to make a table and what it is and SYNTAX_**

Now we are finally getting into the introduction! 
to begin, we need to understand a few basic syntaxes

```sql
CREATE      --kinda obvious, but for clarity. a keyword used to CREATE a new instance of a table, sequence and more

NUMBER      --it's a basic, yet effective method to input numerical information. This CAN be made more complicated later on, but that's later

VARCHAR     --this is a more for string values rather than numbers, it inputs string values such as names, words, etc.

PRIMARY KEY --this is primarily used for setting a primary key. There can only be one per table and it's to ensure data uniqueness

FOREIGN KEY --this, like a primary key, is used to connect 2 tables together via similarities in information. an example will be shown soon

VALUES      --this is a keyword used when inserting information into a table

INSERT INTO --also somewhat obvious, but it simply insert information into a table, however it requires both a table and a skeleton

NULL        --this simply means there is no value, usually when displayed, it will appear just as "NULL"

()          --this bracket is simply used to enclose information for a certain function. I will show you how right after this
```
This code is incredibly useful to understand and very simple. Please note that the `()` is necessary and the `;` is also needed to finish off a section

So to create a basic table, you typically want to start with "CREATE TABLE". So let's make a basic table together!
To begin, you need to include a Table name, table ID and a few other values. We will use a few, custom values like `first_name`, `last_name`, `city` and `Age`.

```sql
CREATE TABLE Example(        --This line established the tables name as "Example" and the open bracket makes all info between it linked to it

    ExampleID NUMBER(4),     -- This line of code establishes the "ID" as a definitive number up to 4 digits

    first_name VARCHAR(10),  -- This line simply explains what type of info will be input into "first name"

    last_name VARCHAR(20),   -- This line does the same as the previous, only it's "last name" instead

    city VARCHAR(20),        -- This line defines what goes in the "City" area

    Age NUMBER(2)            -- This line defines the "Age" as any 2 digit number (3 digits and 1 digit is unreal!)
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
        VALUES (1, 'Andrew', 'Graves', NULL, 20);
```

***

This might seem like a lot of info, so let's break it down so it's easier to process

So when beginning, we have to look back at the previous table, `Example`. In this table we inputted the information adding `ExampleID`, `first_name`, `last_name`, `city` and `Age`, and since we are plugging information into every field, we must insert in the following format

```sql
INSERT INTO Example (ExampleID, first_name, last_name, city, Age)

```

For context, this line alone explains to the computer that in the table named `Example`, you are filling information for the fields within the brackets.

***

Now obviously, after adding the main body of Inserting, we must plug in certain `Values` to make sure the table properly contains information.

```sql
VALUES (1, 'Mason', 'Adams', 'El Paso', 25);

```

So lets break THIS down too. So inside the `()`, the commas are used to represent separation of data, in this case, it is separating the ID, then First name, Last name, so on and so forth.

alltogether it should look like the table mentioned above. the huge clutter of code simply is just inserting a new row every time theres a new "insert" command.

***

# Chapter 2
**_How to make queries_**

So now you have a basic idea of how to `CREATE` a table and how to understand SOME syntaxes, let us begin with actually displaying the information put into the actual table!

Usually you want to begin using a few new syntaxes, such as `SELECT`, `FROM` and sometimes `WHERE`

typically you want to organize the code as follows: 
```sql
SELECT *        --This code simply states "get ALL data"

FROM Example;   --This code is used to explain WHERE the information is coming from, in this example, it's from the table "Example"
```

now if you noticed, not all syntax functions were used, as `WHERE` was not used at all. That's because the syntax is used when defining specific data and 
requires more of a "Build" to push forward.

lets look at an example here using Age as our "where" clause:

```sql
SELECT * 
FROM Example
WHERE [column/value],
```
<hr>
this code isn't very clear, but provides an idea of HOW where is used as a skeleton. Now, lets plug in some information to ensure it's working:

```sql
SELECT * 
FROM Example
WHERE Age = 21
```

This specific branch of code is essentially saying, Wherever the "age" column is equal to 21, which is only on Mason's row, 
it will pull and display only info matching the expression.

***