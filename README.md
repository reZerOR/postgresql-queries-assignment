# PostgreSQL question and answer

## 1. What is PostgreSQL ?
PostgreSQL is a object relational database managment system. It extends SQL language combined with many features that safely store the most complicated data workloads. its powerful and open source.

## 2. What is the purpose of a database schema in PostgreSQL?
In PostgreSQL a database schema's purpose is to organize database objects into logical groups, making them easier to manage. Schemas help with data organizetion, security, and managment.

## 3. Explain the primary key and foreign key concepts in PostgreSQL.
Primery key ensure data in the specefic column is unique.
Foreign key is column or group of columns in a table that provides a link between data in two columns.

## 4. What is the difference between the VARCHAR and CHAR data types?
VARCHAR stores variable-length character strings, while CHAR stores fixed-length character strings.
Meaning a CHAR column will always use the same amount of storage to store data, wheres VARCHAR only uses the space needed for that data it contains

## 5. Explain the purpose of the WHERE clause in a SELECT statement.
Where clause in SELECT statement acts as filter, specifying the condition that rows must meet to be included in the query results.

## 6. What are the LIMIT and OFFSET clauses used for?
LIMIT used for limiting the number of returned by a query.

OFFSET used for skiping spcefied numbers of rows

## 7. How can you perform data modification using UPDATE statements?
To modify data using UPDATE, we use this syntax
```
UPDATE table_name
SET column1 = value1, column2 = value2 ...
WHERE condition
```
## 8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
JOIN operation is a crucial feature that allows you to combine data from multiple tables based on a shered column value, effectively retrieving related information by matching rows across different tables within a database, making it possible to query data from multiple sources in a single statement.

## 9. Explain the GROUP BY clause and its role in aggregation operations.
GROUP used to organize data into groups based on specific column values, allowing you to perform aggregate calculations on each group, essentially summerizing data within those groups instead of getting individual row results.

## 10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
For COUNT you can use like this to count number rows in a table
```
SELECT COUNT(*) FROM students;
```
For SUM you can use like this to calculate total values of a column in a table
```
SELECT SUM(mark) FROM students;
```
For AVG you can use like this to get avarage of values of a column in a table
```
SELECT AVG(age) FROM students;
```