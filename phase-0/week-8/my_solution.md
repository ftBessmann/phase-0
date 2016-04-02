Release 6
1. SELECT * FROM States;
2. SELECT * FROM Regions;
3. SELECT State_name, Population FROM States;
4. SELECT State_name, Population FROM States ORDER BY Population DESC;
5. SELECT State_name FROM States WHERE Region_id=7;
6. SELECT State_name, Population_density FROM States WHERE Population_density>50 ORDER BY Population_density ASC;
7. SELECT State_name FROM States WHERE Population BETWEEN 1000000 AND 1500000;
8. SELECT State_name, Region_id FROM States ORDER BY Region_id ASC;
9. SELECT Region_name FROM Regions WHERE Region_name LIKE "%central%";
10. SELECT Regions.region_name, States.state_name FROM Regions RIGHT JOIN States ON Regions.id=States.id ORDER BY Regions.region_name ASC;

Release 7
