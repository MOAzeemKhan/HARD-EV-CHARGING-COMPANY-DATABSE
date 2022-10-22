Select* from Station;
Select* from Customer;

Select * from account
where membership_type='Gold';

Select* from Asset
Where Station_ID=502;

Select customer_ID, Plan_Type, Address,cus_mobile_number
from customer
where name="Param Mehta";

Select* 
from Employees, non_technical
where Employees.Emp_ID=non_technical.Emp_ID;

Select *
From vehicle
Where vehicle_company like 't%';

Select name
From customer
Order by name;

Select Emp_ID, Emp_Name,salary
From employees
Order by salary desc;

use ev;
Select avg(units_used);

select min(salary)
From employees;

Select max(salary)
From employees;

Select count(vehicle_id)
From owns;

Select sum(Booked_slots)
From station;

Select Vehicle_company,Plug_type
From vehicle
Group by Plug_type;

Select Slots_Available, Cost_Per_KWH
From station
Group by Station_ID;

Select *
From account
Where units_used>( Select avg(units_used)From account);

Select* 
From employees
Where salary>(Select min(salary)
From employees);

Select * 
From vehicle inner join station
on vehicle.vehicle_ID=station.vehicle_ID;

create view view1 as
select * from customer;

desc view1;

select* from view1;












