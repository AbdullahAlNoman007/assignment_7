Question 1: What is PostgreSQL?
Answer 1: PostgreSQL is an open-source object-relational database management system (ORDBMS).PostgreSQL is known for its reliability, scalability, and extensibility. It offers capabilities for complex queries, indexing, and data integrity and supports SQL.PostgreSQL runs almost every Operating System.


Question 2: What is the purpose of a database schema in PostgreSQL?
Answer 2: In PostgreSQL, a schema is the collection of database objects and the database object includes tables, views, indexes, data types, functions, stores, procedures, and operators.
A schema allows to organize and namespace of database objects within a database.
    1. Schema allows multiple users to use one database without interfering with each other.
    2. Schema makes the database more manageable by organizing database objects into logical groups.


Question 3: Explain the primary key and foreign key concepts.
Answer 3: A primary key is used to uniquely identify each row of a database's table, ensuring data integrity. A foreign key establishes a relationship between two tables.


Question 4: What is the difference between the VARCHAR and CHAR data types?
Answer 4: VARCHAR and CHAR are both character data types in PostgreSQL. VARCHAR stores variable-length strings, while CHAR stores fixed-length strings. VARCHAR occupies storage according to its length but CHAR occupies fixed storage If the fixed storage is 10 and the provided string length is 6 then the other 4 will be filled by space.


Question 5: Explain the purpose of the WHERE clause in a SELECT statement.
Answer 5: The WHERE clause in the SELECT statement is used to filter records. It is used to extract only those records that fulfill a specified condition.


Question 6: What are the LIMIT and OFFSET clauses used for?
Answer 6: LIMIT and OFFSET clauses are used for pagination. The LIMIT clause limits the number of rows returned by a query and the OFFSET clause specifies where to start retrieving rows it skips the given numbers of rows from the start of the table.


Question 7: How can you perform data modification using UPDATE statements?
Answer 7: The PostgreSQL UPDATE statement allows you to update data in one or more columns of one or more rows in a table.

    UPDATE table_name
    SET column1 = value1,
        column2 = value2,
        ...
    WHERE condition;


Question 8: What is the significance of the JOIN operation, and how does it work in PostgreSQL?
Answer 8: The PostgreSQL Join statement is used to combine data from one or more tables based on a common field between them. At maximum time, the Primary key of the first table and the Foreign key of other tables are the common fields.
There are 4 basic types of joins:
    * Inner Join
    * Left Join
    * Right Join
    * Full Outer Join
Using Join in PostgreSQL allows you to retrieve data from several tables by using the logical relationships between them. It works using the Primary key and Foreign key.


Question 10: How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
Answer 10: Aggregate functions return a single row after calculating over a set of rows.

* AVG() - return the average value.

    SELECT AVG(age) AS average_age
    FROM students;

* COUNT() - return the number of values.

    SELECT COUNT(*) AS total_students
    FROM students;

* SUM() - return the sum of all values.

    SELECT SUM(fee) AS total_fee
    FROM students;


Question 12: Explain the concept of a PostgreSQL view and how it differs from a table.
Answer 12:In PostgreSQL, A view presents a subset or combination of data from one or more underlying tables or views. It is a virtual representation of data based on a query. In contrast to tables, views produce results dynamically based on the query definition rather than storing the data directly. Views are a versatile tool for data modification and access control because they may abstract the underlying data structure, simplify access, impose security measures, and give users a read-only or updateable interface.