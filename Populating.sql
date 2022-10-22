/* Employee's Data*/
INSERT INTO `Employees` VALUES (120,'Quincy','Laurel West',997292),(123,'Ayla','Kenyon Terry',362329),(130,'Eric','Brenna Mayer',784441),(135,'Heaven','Prof. Elnora Lowe PhD',283830),(144,'Gust','Gwendolyn Gusikowski DDS',926401),(166,'Mckenna','Easter Emmerich',981347),(181,'Alba','Neha Conn II',369162),(192,'Abdul','Cassidy Crist',960389),(193,'Pauline','Vidal Keeling',692723),(199,'Israel','Dr. Aileen Mills I',695717);
 select * from employees;
 

/*Customer's Data*/
desc customer;
insert into Customer 
values (1000001,'Virat Kohli','Titanium','Worli','Anushka Sharma','viratkohli@gmail.com',8140675423),
(1000002,'Neeraj Chopra','Platinum','Bandra','Uday Chopra','neerajchopra@gmail.com',7234404780),
(1000003,'Sonia Rawal','Gold','Borivali','Suresh Rawal','soniarawal@gmail.com',6979425719),
(1000004,'Karan Doshi','Normal','Dahisar','Kahaan Doshi','karandoshi@gmail.com',7859563710),
(1000005,'Aryan Bondgulwar','Normal','Nehrul','Aakash Bondgulwar','aryanbond@gmail.com',3479454734),
(1000006,'Suresh Raina','Titanium','Kandivali','Dhoni Raina','sureshraina@gmail.com',8329405780),
(1000007,'Param Mehta','Platinum','Malad','Narendra Mehta','parammehta@gmail.com',8150671423),
(1000008,'Priyanka Chopra','Platinum','Juhu','Nick Jonas','neerajchopra@gmail.com',7234404780),
(1000009,'Mayuresh Madan','Gold','Versova','Rajnath Madan','mayureshmadan@gmail.com',6974425718),
(10000010,'Rishabh Lalwani','Normal','Cuffe Parade','Jiten Lalwani','rishabhlalwani@gmail.com',8934356710);
select*From customer;


/*Technical Employees*/
insert into technical
values(120, 34, 12 ),
(123,78, 23  ),
(130,56, 67 ),(135,78,43 ),
(144,63, 78 ) ;

/*Non-Technical Employees*/
insert into Non_technical
values(166, 789),
(181,345),
(192,908),(193,203),
(199,543);


/*Vehicles*/
select*from vehicle;
desc vehicle;
insert into vehicle
values(1000, 'Type1', 'Li-ion', 'Tesla', 'Model 3', 'Level 1', 'BEV', 2000),
(1001, 'Type 2', 'Li-ion', 'Nissan', 'Model 3', 'Level 2', 'PHEV', 2001),
(1002, 'CCS', 'Li-ion', 'Volvo', 'Model S', 'Level 1', 'BEV', 2002),
(1003, 'CHAdeMO', 'NiMH', 'Toyota', ', Model Y', 'Level 3', 'HYBRID', 2003),
(1004, 'J-Plug', 'Li-ion', 'Zoox','Model X', 'Level 1', 'BEV', 2004),
(1005, 'Type 2', 'NiMH','Rivian','R1T', 'Level 2', 'PHEV',2005),
(1006, 'CCS','Li-ion','Nio','R1S', 'Level 3', 'BEV', 2006),
(1007, 'CHAdeMO', 'NiMH','Lucid Motors', 'Plus B5', 'Level 1', 'HYBRID', 2007),
(1008, 'J-Plug', 'Li-ion', 'Li Auto', 'Plus B4', 'Level 2', 'PHEV', 2008),
(1009, 'Type 2', 'NiMH', 'Polestar', 'Level 3', 'Core T3', 'HYBRID', 2009),
(1010, 'CCS', 'Li-ion', 'Tesla', 'Hatchback', 'Level 1', 'BEV', 2010);


/*Payment*/
desc payment;
select*from payment;
insert into payment values
(1, 2100000001, "2020-10-11"),
(9, 2100000002, "2020-09-11"),
(8, 2100000003, "2020-10-12"),
(7, 2100000004, "2020-09-05"),
(6, 2100000005, "2020-10-20"),
(5, 2100000006, "2020-09-18"),
(4, 2100000007, "2020-09-09"),
(3, 2100000008, "2020-11-12"),
(2, 2100000009, "2020-09-29"),
(10, 2100000010, "2020-10-12");



 /*Account*/
desc account;
select*from account;
insert into account
values
(1, "Normal", 50, "2020-10-11", 10000010),
(2, "Gold", 60, "2020-10-11", 1000009),
(3, "Platinum", 70, "2020-10-13", 1000008),
(4, "Platinum", 80, "2020-11-21", 1000007),
(5, "Titanium", 90, "2020-11-07", 1000006),
(6, "Normal", 100, "2020-09-29", 1000005),
(7, "Normal", 110, "2020-10-19", 1000004),
(8, "Gold", 120, "2020-11-05", 1000003),
(9, "Platinum", 130, "2020-09-12", 1000002),
(10, "Titanium", 140, "2020-10-27", 1000001);





/*OWNS*/
use ev;
desc owns;
select*From owns;
insert into owns values
(1009,1000001),
(1008,1000002),
(1007,1000003),
(1006,1000004),
(1005,1000005),
(1004,1000006),
(1003,1000007),
(1002,1000008),
(1001,1000009),
(1010,10000010);


/*Station*/
select*from station;
desc station;
insert into station
values
(500, 1, 12, 2, 1000, 120),
(501, 2, 13, 0, 1002, 123),
(502, 3, 11, 3, 1003, 130),
(503, 4, 14, 1, 1006, 135),
(504, 5, 15, 5, 1005, 144);


/*Asset*/
desc asset;
select*from asset;
insert into asset values
(21, 31, 41, 71, 500),
(22, 32, 42, 72, 501),
(23, 33, 43, 73, 502),
(24, 34, 44, 74, 503),
(25, 35, 45, 75, 504);


show tables;

