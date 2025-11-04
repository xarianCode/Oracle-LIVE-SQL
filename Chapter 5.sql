--   Chapter 5   --

/* Create an example sql for ordering and other information


*/ 

CREATE SEQUENCE ["insert tag here EX:" orderitems_item#_seq]
START WITH 1021
INCREMENT BY 1;

 -- do keep in mind this is using an example made inside the oracle live sql

 /* establish current values by using */ CURRVAL /* and using next values by doing */ NEXTVAL





-- Update command is a clause used to identify a table 
-- SET clause indentifies the column being changes to new values
-- WHERE clause is which specific row is being updated


UPDATE [tablenamehere]
   SET [columnnamehere] = new_Datavalue, "..."
/* this section is optional for more specifics */

WHERE (conditionname) = datavalue;

-- WHERE can be used to limit the changes, like if you say "everyone gets a raise if you're in IT", inserting 10% increase ALL VALUES
-- using WHERE makes the condition, such as only the 10% raise if said employee is from  = ("DepartmentIT")


-- an example will be written down below, following the skeleton of another demo.

UPDATE EMPLOYEES                                 --establishing here which table it is updating, "EMPLOYEES" in this example
SET Salary =salary+ (salary * 0.0305)            -- This line gets the salary value and multiplies it by 0.0305 (the raise value), and adding it to the original salary value
WHERE department_id = 60;                        -- this line ensures the info is only modified on ID's that are 60

-- Moving onto the next section of the chapter: 
-- DELETE will be mainly about deleting tables, its children and more


DELETE FROM [tablename]
   WHERE (condition);

   -- COMMIT command can be used to permanently change the iformation on a table
   -- ROLLBACK command is used to undo any sort of changes that are NOT committed
      -- note that this also works to redo information after a crash 


-- Use the command known as SAVEPOINT to create an instance of the information. Think of it as DST Rollback feature

SAVEPOINT POI1; -- use this command to create a savepoint 

UPDATE EMPLOYEES                             
set  salary =12510               -- this info updates the "employee" table salary to 12510 
WHERE last_name = "tobias";           -- the WHERE condition changes ONLY where an employee is named "tobias" to 12510

ROLLBACK TO SAVEPOINT POI1;  -- use this command to "roll back" to the  savepoint named POI, restoring any changes made


-- after all this is executed, the changes go back to the way they were when you made SAVEPOINT POI1

/*     

In case a table needs to be locked,  as in, only certain people can change it with a key, use LOCK TABLE (name)


*/

-- bonus note, adding a COMMIT function AFTER a savepoint, rollback will not undo it. 

-- see this as a undo feature 

