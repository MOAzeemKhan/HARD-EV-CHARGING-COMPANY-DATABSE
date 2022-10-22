CREATE TABLE Customer
(
  Customer_ID NUMERIC NOT NULL,
  Name varchar(50) NOT NULL,
  Plan_Type varchar(50) NOT NULL,
  Address varchar(50) NOT NULL,
  dependent varchar(50) NOT NULL,
  cus_email varchar(50) NOT NULL,
  cus_mobile_number NUMERIC(10) NOT NULL,
  PRIMARY KEY (Customer_ID)
);



CREATE TABLE Vehicle
(
  Vehicle_ID Numeric NOT NULL,
  Plug_Type varchar(50) NOT NULL,
  Battery_Information varchar(50) NOT NULL,
  Vehicle_Company varchar(50) NOT NULL,
  Vehicle_Model varchar(50) NOT NULL,
  Charging_ratings varchar(50) NOT NULL,
  Type_OF_EV varchar(50) NOT NULL,
  Insurance_ID NUMERIC NOT NULL,
  PRIMARY KEY (Vehicle_ID),
  UNIQUE (Insurance_ID)
);

CREATE TABLE Account
(
  ACC_NO NUMERIC NOT NULL,
  Membership_type varchar(50) NOT NULL,
  units_used INT NOT NULL,
  Visiting_History date not null,
  Customer_ID NUMERIC NOT NULL,
  PRIMARY KEY (ACC_NO),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) on delete cascade on update cascade
);


CREATE TABLE Employees
(
  EMP_ID Numeric NOT NULL,
  EMP_NAME varchar(50) NOT NULL,
  DEPENDENTS varchar(50) NOT NULL,
  Salary Numeric NOT NULL,
  PRIMARY KEY (EMP_ID)
);


CREATE TABLE Station
(
  Station_ID INT NOT NULL,
  Slots_Available INT NOT NULL,
  Cost_per_KWH INT NOT NULL,
  Booked_slots INT NOT NULL,
  Vehicle_ID Numeric NOT NULL,
  EMP_ID Numeric NOT NULL,
  PRIMARY KEY (Station_ID),
  FOREIGN KEY (Vehicle_ID) REFERENCES Vehicle(Vehicle_ID) on delete cascade on update cascade,
  FOREIGN KEY (EMP_ID) REFERENCES Employees(EMP_ID) on delete cascade on update cascade
);

CREATE TABLE Asset
(
  Charging_KIOSK_Model NUMERIC NOT NULL,
  Cable_Number INT NOT NULL,
  Plug_Number INT NOT NULL,
  Solar_Panel_Number INT NOT NULL,
  Station_ID INT NOT NULL,
  Foreign Key(Station_ID) references station(Station_ID) on delete cascade on update cascade
);

Create TABLE Non_Technical
(
  EMP_ID Numeric NOT NULL,
  PRIMARY KEY (EMP_ID),
  Incentives numeric,
  FOREIGN KEY (EMP_ID) REFERENCES Employees(EMP_ID) on delete cascade on update cascade
  
);
Create TABLE Technical
(
  EMP_ID Numeric NOT NULL,
  PRIMARY KEY (EMP_ID),
  score numeric not null,
  no_hours int not null,
  FOREIGN KEY (EMP_ID) REFERENCES Employees(EMP_ID) on delete cascade on update cascade
);

CREATE TABLE Payment
(
  ACC_NO NUMERIC NOT NULL,
  payment_number Numeric NOT NULL,
  Payment_Date date NOT NULL,
  PRIMARY KEY (payment_number),
  Unique (ACC_NO),
  FOREIGN KEY (Acc_NO) REFERENCES Account(Acc_NO) on delete cascade on update cascade
);

CREATE TABLE owns
(
  Vehicle_ID Numeric NOT NULL,
  Customer_ID Numeric NOT NULL,
  PRIMARY KEY (Vehicle_ID, Customer_ID),
  FOREIGN KEY (Vehicle_ID) REFERENCES Vehicle(Vehicle_ID) on delete cascade on update cascade,
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) on delete cascade on update cascade
);