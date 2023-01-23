
---Question 3 Composing/Optimization SQL Query
--Q1

select sum(item_weights_in_kg) as 'Total Weight', company_name from shipments where shipment_Id not in (select shipment_Id from truck_trip) group by company_name order by company_name Asc;

--Q2

select MAX(item_value_in_$) as 'Highest Item Value', company_name from shipments GROUP BY company_name ORDER BY company_name ASC;

--Q3
select * from mechanics m join employees e on m.employee_id=e.employee_id where mechanics_id not in (select mechanics_id from mechanics_repair);

--Q4 
select * from shipments where item_weights_in_kg>0 and item_weights_in_kg<=7000 order by item_weights_in_kg,company_name Asc

--Q5
select * from truck_trip t inner join shipments s on t.shipment_Id=s.shipment_Id,
truck_trip tt inner join drivers d on d.driver_id=tt.driver_id,
shipments tp inner join trucks ts on tp.truck_id=ts.truck_id group by ts.brand;


--Q6
select sum(item_weights_in_kg) as 'Total Weight',e.employee_name, e.seniorty from shipments s join truck_trip t on s.shipment_Id=t.shipment_Id,
drivers d join truck_trip dt on d.driver_id=dt.driver_id,
employees e join drivers db on e.employee_id=db.employee_id
where e.seniorty =(select max(seniorty) from employees) group by employee_name,seniorty;

--Q7
select sum(item_weights_in_kg) as 'Total Weight',e.employee_name, db.driver_id from shipments s join trucks t on s.truck_id=t.truck_id,
employees e join drivers db on e.employee_id=db.employee_id where t.truck_id in (select truck_id from mechanics_repair) AND 
t.numbers_of_repairs <(select AVG(t.numbers_of_repairs) from employees) group by employee_name,driver_id;


--SELECT * FROM (SELECT sum(item_weights_in_kg), sum(item_weights_in_kg) FROM shipments)  outer join (SELECT AVG(numbers_of_repairs), brand FROM trucks);

--select sum(item_weights_in_kg) as 'Total Weight', sum(item_value_in_$) 'Total Value' from shipments where truck_id in (select truck_id from mechanics_repair);


--select * from trucks where numbers_of_repairs<AVG(numbers_of_repairs) order by truck_id Asc
--select truck_id from trucks_tbl where numbers_of_repairs<AVG(numbers_of_repairs);


--select AVG(numbers_of_repairs) from trucks where truck_id=113

--Question 4 Restriction
