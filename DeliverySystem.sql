
SELECT OrderId, Total_price , Delivery_charge, Driver_id, Location_id, Pickup_location, Customer_name, Customer_cell , License_number, Vehicle, Rating 
FROM DELIVERYSYSTEM.ORDER inner join deliverysystem.driver
on DriverId = Driver_id;

SELECT OrderId, Total_price , Delivery_charge, Driver_id, Location_id, A.Pickup_location, Customer_name, Customer_cell , ProviderId, Website, Product_name, Product_quantity
FROM DELIVERYSYSTEM.ORDER A inner join deliverysystem.provider B
on A.Pickup_location = B.Pickup_Location;

SELECT OrderId, Total_price , Delivery_charge, Driver_id, A.Location_id, Pickup_location, Customer_name, Customer_cell , Dropoff_location, Location_address
FROM DELIVERYSYSTEM.ORDER A inner join deliverysystem.location B
on A.Location_id = B.LocationId;

SELECT OrderId, Total_price , Delivery_charge, Driver_id, A.Location_id, Pickup_location, Customer_name, Customer_cell , Id, Cellphone_number, Email
FROM DELIVERYSYSTEM.ORDER A inner join deliverysystem.person B
where A.Customer_name = B.Name;



SELECT A.Id, A.Name , A.Cellphone_number, A.email, B.name, B.position, B.Admin
FROM DELIVERYSYSTEM.person A inner join deliverysystem.staff B
on A.Id = B.Id;

SELECT A.Id, A.Name , A.Cellphone_number, A.email, B.name, B.Highest_degree, B.Department
FROM DELIVERYSYSTEM.person A inner join deliverysystem.Faculty B
on A.Id = B.Id;

SELECT A.Id, A.Name , A.Cellphone_number, A.email, B.name, B.Graduation_year, B.Major, B.Status
FROM DELIVERYSYSTEM.person A inner join deliverysystem.Student B
on A.Id = B.Id;



