create database db5;   -- database
use db5;               -- using db5 database

-- creating country table

CREATE TABLE country
( cust_id varchar(16) primary key,
country varchar(30),
latitude float(50),
longitude float(50)
);


-- summary of columns
DESC country;

-- inserting row
INSERT INTO country
VALUES ('3668-QPYBK', 'United States', 33.964131, -118.272783);

-- inserting row
INSERT INTO country
VALUES('9237-HQITU' ,'United States' ,34.048013 ,-118.293953),
('9305-CDSKC' ,'United States' ,34.062125 ,-118.315709),
('7892-POOKP' ,'United States' ,34.039224 ,-118.266293),
('0280-XJGEX' ,'United States' ,34.066367 ,-118.309868),
('4190-MFLUW' ,'United States' ,34.023810 ,-118.156582),
('8779-QRDMV' ,'United States' ,34.066303 ,-118.435479),
('1066-JKSGK' ,'United States' ,34.099869 ,34.099869),
('6467-CHFZW' ,'United States' ,34.089953 ,-118.294824);

-- inserting row
INSERT INTO country
VALUES ('8665-UTDHZ', 'United States', 34.044271, -118.185237);


-- checking country table
select * from country;

----------------------------------------------------------------------------------

-- creating table state
CREATE TABLE state
( cust_id varchar(16) primary key,
state varchar(30),
senior_citizen char(5),
partner char(5),
dependents char(5),
FOREIGN KEY (cust_id) REFERENCES country(cust_id)
);



-- checking summary of state
DESC state;


-- inserting row
INSERT INTO state
VALUES
('3668-QPYBK' ,'California' ,'yes','yes','yes');


INSERT INTO state
VALUES ('9237-HQITU' ,'California'  ,'no','no','no');

INSERT INTO state
VALUES ('9305-CDSKC' ,'California' ,'no','no','yes');

INSERT INTO state
VALUES ('7892-POOKP' ,'California' ,'no','no','yes');

INSERT INTO state
VALUES
('0280-XJGEX' ,'California' ,'no','yes','yes');

INSERT INTO state
VALUES
('4190-MFLUW' ,'California' ,'no','no','yes');

INSERT INTO state
VALUES
('8779-QRDMV' ,'California' ,'no','yes','no');

INSERT INTO state
VALUES
('1066-JKSGK' ,'California' ,'yes','no','no');

INSERT INTO state
VALUES
('6467-CHFZW' ,'California' ,'no','no','no');

INSERT INTO state
VALUES
('8665-UTDHZ' ,'California' ,'no','no','yes');

-- checking state table
select * from state;

-----------------------------------------------------------------------------------------------

-- creating table city
CREATE TABLE city
( zip_code int(16) primary key,
cust_id varchar(15),
gender char(8),
internet_services char(20),
multiples_line char(20),
online_security char(20),
FOREIGN KEY (cust_id) REFERENCES state(cust_id)
);


-- summary of city
desc city;

-- inserting row or entries
INSERT INTO city
VALUES
('90003' ,'3668-QPYBK' ,'Male','DSL','No','Yes');

INSERT INTO city
VALUES
('90005' ,'9237-HQITU' ,'Female','Fiber optic','No','No');

INSERT INTO city
VALUES
('90006' ,'9305-CDSKC' ,'Female','Fiber optic','Yes','No');

INSERT INTO city
VALUES
('90010' ,'7892-POOKP' ,'Female','Fiber optic','Yes','No');

INSERT INTO city
VALUES
('90015' ,'0280-XJGEX' ,'Male','Fiber optic','Yes','No');

INSERT INTO city
VALUES
('90020' ,'4190-MFLUW' ,'Female','DSL','No','No');

INSERT INTO city
VALUES
('90022' ,'8779-QRDMV' ,'Male','DSL','No phone service','No');
INSERT INTO city
VALUES
('90024' ,'1066-JKSGK' ,'Male','No','No','No internet service');

INSERT INTO city
VALUES
('90028' ,'6467-CHFZW' ,'Male','Fiber optic','Yes','No');

INSERT INTO city
VALUES
('90029' ,'8665-UTDHZ' ,'Male','DSL','No phone service','No');


-- city table
select * from city;


-----------------------------------------------------------------------------------------------

-- creating tech_support table

CREATE TABLE tech_support
( zip_code int(16) primary key,
device_protection varchar(20),
tech_support char(20),
online_backup char(20),
FOREIGN KEY (zip_code) REFERENCES city(zip_code)
);

-- summary of tech_support table
desc tech_support;


-- inserting row values

INSERT INTO tech_support
VALUES
('90003' ,'No' ,'No','Yes');

INSERT INTO tech_support
VALUES
('90005' ,'No' ,'No','No');

INSERT INTO tech_support
VALUES
('90006' ,'yes' ,'No','No');

INSERT INTO tech_support
VALUES
('90010' ,'yes' ,'Yes','No');

INSERT INTO tech_support
VALUES
('90015' ,'yes' ,'No','Yes');

INSERT INTO tech_support
VALUES
('90020' ,'yes' ,'Yes','No');

INSERT INTO tech_support
VALUES
('90022' ,'yes' ,'No','No');

INSERT INTO tech_support
VALUES
('90024' ,'No internet service' ,'No internet service','No internet service');

INSERT INTO tech_support
VALUES
('90028' ,'No' ,'No','Yes');

INSERT INTO tech_support
VALUES
('90029' ,'No' ,'No','Yes');

-- cheching tech_support
select * from tech_support;

-------------------------------------------------------------------------------------------------


-- creating movie_table

CREATE TABLE movie_table
( zip_code int(16) primary key,
streaming_Tv varchar(20),
contract char(20),
paperless_billing char(20),
streaming_movies char(20),
tenure_movie int(5),
FOREIGN KEY (zip_code) REFERENCES tech_Support(zip_code)
);

-- summary of movie_table
desc movie_table;

-- inserting rows in movie_table

INSERT INTO movie_table
VALUES
('90003' ,'No' ,'Month-to-month','Yes','No',2);

INSERT INTO movie_table
VALUES
('90005' ,'No' ,'Month-to-month','Yes','No',2);

INSERT INTO movie_table
VALUES
('90006' ,'Yes' ,'Month-to-month','Yes','Yes',8);

INSERT INTO movie_table
VALUES
('90010' ,'Yes' ,'Month-to-month','Yes','Yes',28);

INSERT INTO movie_table
VALUES
('90015' ,'Yes' ,'Month-to-month','Yes','Yes',49);

INSERT INTO movie_table
VALUES
('90020' ,'No' ,'Month-to-month','No','No',10);

INSERT INTO movie_table
VALUES
('90022' ,'No' ,'Month-to-month','Yes','Yes',1);

INSERT INTO movie_table
VALUES
('90024' ,'No internet service' ,'Month-to-month','No','No internet service',1);

INSERT INTO movie_table
VALUES
('90028' ,'Yes' ,'Month-to-month','Yes','Yes',47);

INSERT INTO movie_table
VALUES
('90029' ,'No' ,'Month-to-month','No','No',1);

-- movie_table
select * from movie_table;

-----------------------------------------------------------------------------------------------------------


-- creating payment table

CREATE TABLE payment_table
( cust_id varchar(16) primary key,
payment_method char(30),
monthly_charge float(5),
total_charge float(8),
FOREIGN KEY (cust_id) REFERENCES city(cust_id)
);

-- summary of payment table
desc payment_table;


-- inserting row values in payment table

INSERT INTO payment_table
VALUES
('3668-QPYBK' ,'Mailed check' ,'53.85','108.15');

INSERT INTO payment_table
VALUES
('9237-HQITU' ,'Electronic check' ,'70.7','151.65');

INSERT INTO payment_table
VALUES
('9305-CDSKC' ,'Electronic check' ,'99.65','820.5');

INSERT INTO payment_table
VALUES
('7892-POOKP' ,'Electronic check' ,'104.8','3046.05');

INSERT INTO payment_table
VALUES
('0280-XJGEX' ,'Bank transfer (automatic)' ,'103.7','5036.3');

INSERT INTO payment_table
VALUES
('4190-MFLUW' ,'Credit card (automatic)' ,'55.2','528.35');

INSERT INTO payment_table
VALUES
('8779-QRDMV' ,'Electronic check' ,'39.65','39.65');

INSERT INTO payment_table
VALUES
('1066-JKSGK' ,'Mailed check' ,'20.15','20.15');

INSERT INTO payment_table
VALUES
('6467-CHFZW' ,'Electronic check' ,'99.35','4749.15');

INSERT INTO payment_table
VALUES
('8665-UTDHZ' ,'Electronic check' ,'30.2','30.2');


-- payment table
select * from payment_table;




------------------------------------------------------------------------------------------------------------


-- churn table creating

CREATE TABLE churn_table
( cust_id varchar(16) primary key,
churn_label char(3),
churn_value int(2),
churn_score int(4),
CLTV int(6),
churn_reason char(60),
FOREIGN KEY (cust_id) REFERENCES payment_table(cust_id)
);

-- summary of churn table
desc churn_table;


-- inserting row values in churn table

INSERT INTO churn_table
VALUES
('3668-QPYBK' ,'Yes' ,1,86,3239,'Competitor made better offer');

INSERT INTO churn_table
VALUES
('9237-HQITU' ,'Yes' ,1,67,2701,'Moved');

INSERT INTO churn_table
VALUES
('9305-CDSKC' ,'Yes' ,1,86,5372,'Moved');

INSERT INTO churn_table
VALUES
('7892-POOKP' ,'Yes' ,1,84,5003,'Moved');

INSERT INTO churn_table
VALUES
('0280-XJGEX' ,'Yes' ,1,89,5340,'Competitor had better devices');

INSERT INTO churn_table
VALUES
('4190-MFLUW' ,'Yes' ,1,78,5925,'Competitor offered higher download speeds');

INSERT INTO churn_table
VALUES
('8779-QRDMV' ,'Yes' ,1,100,5433,'Competitor offered more data');

INSERT INTO churn_table
VALUES
('1066-JKSGK' ,'Yes' ,1,92,4832,'Competitor made better offer');

INSERT INTO churn_table
VALUES
('6467-CHFZW' ,'Yes' ,1,77,5789,'Competitor had better devices');

INSERT INTO churn_table
VALUES
('8665-UTDHZ' ,'Yes' ,1,97,2915,'Competitor had better devices');


-- summary of churn table
desc churn_table;

-- churn_table
select * from churn_table;