INSERT INTO dbo.trucks(truck_id, brand, load_capacity, years, numbers_of_repairs)
VALUES (113,'toyota', 10000, 2004, 3),
(114,'RAM',30000, 2011, 2),
(117,'Nissan', 40000, 2020, 1),
(116,'Ford', 20000, 2010, 2),
(200,'Audi', 50000, 2021, 0);

INSERT INTO dbo.employees(employee_id, employee_name, employee_surname, seniorty)
VALUES (101,'Vivek','Patel',5),
(103, 'Rahul','Tylor',10),
(105, 'Divya','Patel',2),
(107, 'Alex', 'Allen',7),
(104, 'Jone','Brown',1),
(106, 'Bob','Smith',2),
(110,'Williams','Black',3),
(130,'Emily', 'Isabella', 1),
(150, 'Harsh', 'Shah', 3),
(140, 'Krisha', 'Suthar', 2);


INSERT INTO dbo.drivers(driver_id, employee_id, category)
VALUES (250, 101, 'senior'),
(260, 103, 'senior manager'),
(270, 105, 'junior'),
(280, 106, 'Junior');


INSERT INTO dbo.mechanics(mechanics_id, employee_id, speciality_in_brand)
VALUES (310, 107, 'Ford'),
(320, 104, 'Toyota'),
(330, 110, 'Nissan'),
(340, 130, 'RAM'),
(350, 150, 'Audi'),
(360, 140, 'Toyota');

INSERT INTO dbo.mechanics_repair(repair_id, truck_id, mechanics_id, estimate_time_days, repairs_name)
VALUES (410, 113, 320, 2, 'Tires Puncture'),
(420, 113, 320, 3, 'Starter Failure'),
(430, 113, 320, 5, 'Engine Overheating'),
(440, 114, 340, 2, 'Break Issue'),
(450, 114, 340, 5, 'Engine Overheating'),
(460, 117, 330, 4, 'Tire Puncture'),
(470, 116, 310, 1, 'Light and Blinker Damaged'),
(480, 116, 310, 2, 'Break Jam');

INSERT INTO dbo.shipments(shipment_Id, truck_id, item_weights_in_kg, item_value_in_$, company_name, company_address, phoneNo_1, phoneNo_2, origin_place, destination_place)
VALUES 
(510, 116, 7000, 20000, 'Cargo Express', 'Waterloo, Canada', 2562842222, 3214641044, 'Waterloo, Canada', 'Toronto, Canada'),
(520, 116, 6000, 10000, 'Cargo Express', 'Toronto, Canada', 8763238288, 7876763388, 'Toronto, Canada', 'Pittsburgh, USA'),
(530, 113, 3000, 5000, 'Tiger Express', 'Kitchener, Canada', 1122263733, 6756534449, 'Kitcher, Canada', 'London, Canada'),
(540, 113, 2000, 5000, 'Cargo Express', 'Waterloo, Canada', 6273828333, 3776892922, 'Waterloo, Canada', 'Ottwa, Canada'),
(550, 200, 36900, 120000 ,'Tiger Express', 'British Columbia, Canada', 7878223344, 8373262777, 'British Columbia', 'Alberta, Canada'),
(560, 114, 20123, 50000, 'Tiger Express', 'Alberta, Canada', 7655567233, 7363738899, 'Alberta, Canada', 'Kitchener, Canada'),
(570, 116, 5000, 25000, 'Cargo Express', 'Waterloo, Canada', 2562842222, 3214641044, 'Waterloo, Canada', 'Toronto, Canada');

INSERT INTO dbo.truck_trip(trip_id, origin_place, destination_place, driver_id, road_distance_in_km, number_of_shipments_Item, shipment_Id)
VALUES (610, 'Waterloo, Canada', 'Toronto, Canada', 270, 125.8, 2, 510),
(620,'Alberta, Canada', 'Kitchener, Canada', 260, 3652.7, 5, 560),
(630,'Kitcher, Canada', 'London, Canada', 280, 107.2, 3, 530),
(640,'Kitcher, Canada', 'London, Canada', 280, 107.2, 3, 530),
(650,'kitchener, Canada', 'Alberta, Canada', 260, 3652.7, 5, 560);

select * from truck_trip;


