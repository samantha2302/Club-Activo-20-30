# Club Activo 20 30
Instituto Tecnológico de Costa Rica.

Database Project I.
* Ashley Samantha Acuña Montero 
* Katherine Dayana Amador González
* Kristel Vannesa Salas Villegas

## Executive Summary
The Club activo 20-30 Internacional is a non-profit institution that was born
from the need to create a service club for young adults through donations that are
intended to help youth and children, in addition to carrying out different projects with
the same purpose. It had its beginnings in 1922 in California, United States and has
spread to 8 countries in Latin America. In Costa Rica there are 5 clubs participating:
San José, Limón, Tres Ríos, Tilarán and Metrópoli.

## General objective
❖ Develop a database structure that is capable of storing and managing all information related to the club activo 20-30.
### Specific objectives
❖ Compose the structure of the database, by means of a relational schema and entity relationship model

❖ Establish the structures where the information will be stored and that will carry out different functions.

❖ Designate the structures in charge of the management of important information.


## Problem Description
We must implement and create a database model, which must fulfill all the needs presented in the description given by a real organization of our choice. This will be done through different tools for the design and development of the database objects, in order to store and manage important information.

For this, it was necessary to take requirements directly with the chosen company, in this case a nonprofit organization was chosen and based on these requirements an entity-relationship diagram must be created where the entities and the relationships between them are presented, in addition, through relational algebra each entity or table must have its primary key and foreign keys of the relationships established above depends on whether the relationship is 1, 1 or 1,N or an intermediate table if the relationship is N,M, since it is of utmost importance that within a model these relationships are found, because they will help in its implementation, making the process easier when managing data, since information from different tables is required, this type of model helps to avoid duplication of data, in addition to minimizing the total volume of these, so that the storage space and transmission times are reduced.

On the other hand, for the implementation of the design it is essential to follow the normalization rules, so that the data are organized, the tables and the rules must be taken into account to be able to establish the relationships, for this the three rules must be fulfilled, so the database will be one without anomalies.

Each table must have its attributes, a primary key, and foreign keys, as well as adding actual data inserts in order to create important queries for the company using different types of joins, depending on what is wanted to know.

## Development
First of all, an entity-relationship diagram was elaborated with the requirements taken, so that it could be seen which are the entities with their respective attributes, primary key and the different relationships with other entities, besides knowing which were the corresponding cardinalities for each relationship.

Similarly, once the entity-relationship diagram and the relational model have been created, we proceed to create the respective tables in the selected database
management system, in this case PostgreSQL, 20 tables were created, plus an intermediate table of a many-to-many relationship, as explained below with their
respective attributes and relationships:

The table to store club information. This table has to be related to members to know which members belong to which club, it has the attributes: legal ID, club name,
email, phone number and anniversary date.

The table to store the information of the club members, has as attributes, the member's ID, first and last name, age, email, phone number, status depending on if the member in the club is active or inactive.

The table to store the club membership payment information. This table has to be related to the members table, it has attributes: ID, amount, date of payment and
status that would be canceled or pending.

The table for storing project information. This table is related to financial entries, to the other donations table, to the partners table, to the projects type table and has the following attributes: ID, project name, number of hours invested per partner, date of completion, total amount of sponsorship in dollars, number of children benefited, number of adults benefited and project description.

The table to store the types of projects and is related to the projects table, it presents the attributes: ID, education, ecological, health, recreation and other types of projects.

The table to store the project categories. This table is related to the projects table and has attributes such as: ID, social service and collection.

The table to store the club's sponsor information has the following attributes: ID, sponsor's name, e-mail, phone number, and active or inactive status.

The table to store the information of the club's economic entries and has to be related to the club's information table, the sponsors and the club's projects, its
attributes are: ID, ticket description, date of receipt of money, amount.


The table to store the information of other donations, which has to be related to the club information table, to the sponsors and to the club projects, its attributes are: ID , ticket description, date of receipt and approximate amount of the ticket value.

The table to store the information of the beneficiaries of the club, this table has to be related to the project table, its attributes are: ID, first name, last name, e-mail, phone number and address.

The table for storing the board of directors information is related to the membership table in order to assign members to these positions: ID, board year, president, vice president, secretary, treasurer, fiscal, vocal 1, vocal 2, director 1 , director 2 and sergeant at arms.

The table for storing meeting information must be related to the club, board and member information table, its attributes are: ID, date, time, day, type of meeting: face-to-face, virtual or attendance and the type of meeting either board or member.

The table to store the information of national and international meetings. This table has to be related to the club information table and the board of directors information table: ID, date, time, type of meeting, either virtual or face-to-face, and attendance.

The table to store the information of the regular payments of the club this table has to be related to the club information table and its respective attributes are:
ID, merchant, payment date, payment amount and payment description.

The table to store the club's expenses information. This table has to be related to the club information table and the project table and its attributes are: ID, trade, expense date, expense description , amount and discount. 

The table to store the information of club payments to nationals. This table has to be related to the club information table and its attributes are: ID, amount, date of payment and status either canceled or pending.

The table to store the volunteer information. This table has to be related to the club information table and has: ID, first name, last name, email, phone number.

The table to store the social network information is related to the club information table, it has attributes such as: ID, social network, number of followers.

The table to store the information of the club events, has to be related to the members table and the camaraderie table, its attributes are: ID, event name, event
price, event date, event type whether club, national or international.

The functions of deleting, inserting and updating data should be implemented for each of the tables created in order to streamline these common processes within the databases. In addition, the necessary triggers must be created for the verification of the data that you want to enter, modify or delete from the database, this helps to maintain the security and veracity of the data.

Finally the table to store the information of the camaraderie has to be related
to the events table since they are the ones that provide services in these, its
attributes are: ID, club of the event, date of the event and photos of the event.

Each of the tables mentioned above were created following the normalization
rules, each table has its unique name, a primary key, which can not have null values
or duplicate values, also, in each table there is a functional dependency between
attributes and primary keys so there are no transitive dependencies in the tables.

For the second part of the project, a graphical interface was implemented so
that the user could interact by inserting, updating, and deleting data in the database.

In the database, functions to insert, delete and modify were created for each
table, in addition the triggers were created for the different main actions that can be
carried out in the database such as the insertion, deletion and modification of data,
these are activated automatically each time one of these processes is carried out
and gives a warning message if this is the case. has been carried out correctly, if the
information provided is not correct because the data to be entered already exists or it
violates any rule, the process will not be carried out. Likewise, when trying to delete
a piece of data and providing a non-existent identifier, no action can be taken and,
finally, if you want to update any data and the requested information is incorrect, no
change will be made.

On the other hand, different production, development and test schemes were
created in order to create different instances and not work on the database as such,
likewise, different users with different permissions were created.

Report-type queries were created, the first consists of showing the members
ordered by last name, and shows which club they belong to, as well as the project
they are in, the second query is based on showing the club meetings that were held.
carried out at a specific time, as well as the date it was held and which club the
meeting was from, the third shows the projects that have a total amount of
sponsorship for the project greater than or equal to five million and that benefited
from that project, the fourth shows the projects that are of the recreation type, as well
as the name of the project, with its respective id and the members that are in said
project.

The fifth query shows the events that are congress type, the day of the event
and to which club they belong, the sixth query shows the number of followers in the social networks of each club, the seventh consists of the pending membership
payments of each club.

The eighth consultation deals with educational projects, the ninth consultation
with pending national payments and finally, the high amounts of each club. Each
query is displayed in the queries section in the implemented interface.


## Conclusions
❖ Databases are of utmost importance for organizations, because when
handling large data transactions, they are required to speed up decision
making, by being able to consult the information when required using
keywords to do so.

❖ The normalization rules within the database for the creation of tables are
necessary because, as mentioned in the document, it avoids data
redundancy, reduces updating problems, gives them integrity, is easy to
access and interprets the data well, as well as optimizes storage space,
reduces and facilitates the time, interpretation and revision of the data, and
finally prevents undesirable deletions of data.

❖ The implementation and design of the model must comply with all its
characteristics, since its operation is vital when making queries, this will help
the use of JOIN and WHERE to have access to different information in the
tables and thus be able to join them and query data without creating a
Cartesian product.

❖ The triggers are important since it helps us save many validations with the
crud’s of the tables in the database, in addition, it is an excellent tool for
audits.
