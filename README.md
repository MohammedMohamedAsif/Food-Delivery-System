# Food-Delivery-System
Group Members:
Mohammed Mohamed Asif, 
Imraan Boukarfi, 
Angie Berrios

## Introduction
[Food Delivery System] intends to provide a system that universities and students alike can enjoy. A university who purchases a [Food delivery system] license can run it on their own and distribute the app to students. This will allow the univerisity in question to approve any establishment and driver that wants to deliver food on the campus. 

## Use Case
This application is to be used by universities that want food delivery on campus, but do not want independent non-student contractors delivering the food to campus.

## Business Rules
Each Order must have an ID and a delivery attached.
Each Delivery must have an ID attached.
Each driver must be a student and or faculty.
Establishments can be added by students or faculty.
Each establishment must be approved by faculty.
Dropoff locations can only be on-campus buildings.
Every delivery must have a delivery person and recipient.
Each delivery must be tied to an establishment and drop off location.
Deliveries must be marked complete when completed.
## EERD
For our project, we plan to have quite a few entities to help us organize and give flexibility to our project. We will have a Persons entity with attributes of name, id, cell phone number, and email address. We will then have a faculty entity with a shared attribute of name and id, but also two new attributes of highest degree and college. We will also have an entity called Staff which carries the same name and id attributes as well as position and admin attributes. Finally, we will have a student entity that carries the same name and id, as well as graduation year, major, and student type attributes. These 3 entities will share attributes with the Person entity. Now that we have the people, we also need a location. We will make a Location entity with location_Id, location_Name, address, and dropoff_point attributes. We also need a driver. We will make a Driver entity with a name and id like Person entity. It will also have a license_number, date_Hired, vehicle, and rating attributes and driver_id. We also need a Provider entity that the food comes from. The Provider will have a provider_Id attribute along with location, schedule, website, and item attributes. There will be an Order entity with order_id, total_price, delivery_charge, time, and driver_id. In short we will have Person, Faculty, Student, Staff, Location, Driver, Provider, and Order entities.
## MySQL Queries
This application will be using numerous MySQL Queries such as: Create Table, Insert Query, Joins, Order By Clauses, Indexing and Searching Quries and finally Alter/Updating columns of the table.
In the insert query, we can use simple insert query and insert/update query.
In the Joins query, we can use regular, left and right join.
In the Alter/Updating query we can add, edit, rename and drop a column.
## Trigger
When a new order is submitted to the database a delivery should be created,
When an order is marked completed the delivery should be updated.
When a new establishment is added to the database, there should be a notification sent to the faculty to approve or disapprove the establishment.
## Stored Procedure


## Future Work
If this works out, we hope to expand this service for all universities around the country. 
If this venture is successful there is a possible option to widen the target demographic by also including highschools. 
## MySQL dump
This application will be backed up using MySQL dump client in order to be able to have a backup database and transfer the database
