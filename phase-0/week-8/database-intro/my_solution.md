**Release 6**

1. SELECT * FROM States; 1
2. SELECT * FROM Regions; 2
3. SELECT State_name, Population FROM States; 3
4. SELECT State_name, Population FROM States ORDER BY Population DESC; 4
5. SELECT State_name FROM States WHERE Region_id=7; 5
6. SELECT State_name, Population_density FROM States WHERE Population_density>50 ORDER BY Population_density ASC; 6
7. SELECT State_name FROM States WHERE Population BETWEEN 1000000 AND 1500000; 7
8. SELECT State_name, Region_id FROM States ORDER BY Region_id ASC; 8
9. SELECT Region_name FROM Regions WHERE Region_name LIKE "%central%"; 9
10. SELECT Regions.region_name, States.state_name FROM Regions RIGHT JOIN States ON Regions.id=States.id ORDER BY Regions.region_name ASC; 10

**Release 7**

![Outfits Database Schema Design](/outfits.png)

**Reflection**

*1. What are databases for?*

Databases are used to collect and organize data. They support internal operations of organizations and underpin online interactions with customers and suppliers as well as hold administrative information and more specialized data, such as engineering data or economic models. 

*2. What is a one-to-many relationship?*

A one-to-many relationship represents a relationship when one row in table A may be linked with many rows in table B, but one row in table B is linked to only one row in table A.

*3. What is a primary key? What is a foreign key? How can you determine which is which?*

A primary key is a key in a relational database that is unique for each record. A foreign key is a field (or collection of fields) in one table that uniquely identifies a row of another table. The foreign key is defined in a child table, but it refers to the primary key in the parent table.

*4. How can you select information out of a SQL database? What are some general guidelines for that?*

SELECT statement is used to retrieve data from one or more tables, or expressions.

Syntax

SELECT *column_name,column_name*
FROM *table_name;*

Optional keywords and clauses of SELECT include:

* The FROM clause, which indicates the table(s) to retrieve data from. 1
* The WHERE clause includes a comparison predicate, which restricts the rows returned by the query. 2
* The GROUP BY clause projects rows having common values into a smaller set of rows. 3
* The HAVING clause includes a predicate used to filter rows resulting from the GROUP BY clause. 4
* The ORDER BY clause identifies which column(s) to use to sort the resulting data, and in which direction to sort them (ascending or descending). 5
* The DISTINCT keyword eliminates duplicate data. 6

