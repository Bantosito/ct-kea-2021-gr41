# ct-kea-2021-gr41
----------------------------------------------------
This is the guide on how to create the database from provided files.


1.The database can be created using any MySql supporting platform like online server, hosting or computer with mySql server installed.

-----------------------------------------------------

2. Files inside this repository can be devided into 2 categories:

2.1 DDL_queries.sql and DML_queris.sql are the main components of the database they are required for the proper functionning of the database 



2.2 testDML.sql an testAnalyticQueries.sql are used to show the functioning of the database and how it handles data as well as to show the raporting capabilities.

-------------------------------------------------------

3.In order to create the database we are going to use MySql workbench.

  -After accesing the desired server you must execude DDL_queries.sql first to establish the database and include all required entities and establish relations
  (Remeber to change the database name in the line 3 if you wish to do so.)
  
  -Secondly You must execute DML_queries.sql in order to add required entries to the tables like existing courses, quiz questions or the list of countries. (Remember to change the datbase name in the line 3 if you changed it during the first step)
  
  - the database should now be up and running.
  
  -------------------------------------------------------
  
4. In order to execute the premade queries that are inside testAnalyticQueries.sql file you need to execute testDML.sql file first.
It will provide needed records like mock tests, users and active courses.
(Same as in the previous steps remmnber to change th database name in the line 4 if you did so during the first step)

4a. testAnalyticQueries.sql cannot be executed as a whole as it devided into 4 separate comands executing different functions. Each of them is well described and does different important thing.

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
All files, and changes can be accesed on the project GitHub:

https://github.com/Bantosito/ct-kea-2021-gr41.git
