IF DB_ID (N'ItemsShippingCompany') IS NOT NULL
DROP DATABASE ItemsShippingCompany;
Go
CREATE DATABASE ItemsShippingCompany
Go
USE ItemsShippingCompany;
Go




CREATE TABLE trucks
(
	truck_id int not null,
	brand varchar(50),
	load_capacity int,
	years int,
	numbers_of_repairs int,
	CONSTRAINT Pk_trucks primary key (truck_id),
)

CREATE TABLE employees
(
	employee_id int not null,
	employee_name varchar(50),
	employee_surname varchar(50),
	seniorty int,
	CONSTRAINT Pk_employee primary key (employee_id),
)

CREATE TABLE drivers
(
	driver_id int not null,
	employee_id int,
	category varchar(50),
	CONSTRAINT Pk_driver primary key (driver_id),
	CONSTRAINT FK_DemployeeId FOREIGN KEY (employee_id) REFERENCES employees(employee_id),

)

CREATE TABLE mechanics
(
	mechanics_id int not null,
	employee_id int,
	speciality_in_brand varchar(50),
	CONSTRAINT Pk_mechanic primary key (mechanics_id),
	CONSTRAINT FK_MemployeeId FOREIGN KEY (employee_id) REFERENCES employees(employee_id),

)

CREATE TABLE mechanics_repair
(
	repair_id int not null,
	truck_id int,
	mechanics_id int,
	estimate_time_days int,
	repairs_name varchar(50),
	CONSTRAINT Pk_reapirId primary key (repair_id),
	CONSTRAINT FK_truckId FOREIGN KEY (truck_id) REFERENCES trucks(truck_id),
	CONSTRAINT FK_mechanicsId FOREIGN KEY (mechanics_id) REFERENCES mechanics(mechanics_id),
)

CREATE TABLE shipments
(
	shipment_Id int not null,
	truck_id int,
	item_weights_in_kg int,
	item_value_in_$ int,
	company_name varchar(50),
	company_address varchar(50),
	phoneNo_1 nvarchar(15),
	phoneNo_2 nvarchar(15),
	origin_place varchar(50),
	destination_place varchar(50),
	CONSTRAINT Pk_shipmentsId primary key (shipment_Id),
	CONSTRAINT FK_strucksId FOREIGN KEY (truck_id) REFERENCES trucks(truck_id)
)


CREATE TABLE truck_trip
(
	trip_id int not null,
	truck_id int,
	origin_place varchar(50),
	destination_place varchar(50),
	driver_id int,
	road_distance_in_km float,
	number_of_shipments_Item int,
	shipment_Id int,
	CONSTRAINT Pk_tripId primary key (trip_id),
	CONSTRAINT FK_trucksId FOREIGN KEY (truck_id) REFERENCES trucks(truck_id),
	CONSTRAINT FK_driverId FOREIGN KEY (driver_id) REFERENCES drivers(driver_id),
	CONSTRAINT FK_shipmentId FOREIGN KEY (shipment_Id) REFERENCES shipments(shipment_Id),
)

DROP table trucks;
DROP table employees;
DROP table drivers;
DROP table mechanics;
DROP table mechanics_repair;
DROP table shipments;
DROP table truck_trip;